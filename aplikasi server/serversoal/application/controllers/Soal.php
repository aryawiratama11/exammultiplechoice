<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';

class soal extends REST_Controller {

/*    function __construct($config = 'rest') {
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
        parent::__construct($config);       
    }
*/
    function __construct($config = 'rest') {
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
    header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
    $method = $_SERVER['REQUEST_METHOD'];
        if($method == "OPTIONS") {
            die();
        }
    parent::__construct($config);
    }

    // show data soal
    function index_get() {
        $id = $this->get('id');
        if ($id == '') {
            $soal = $this->db->get('soal')->result();
        } else {
            $this->db->where('id', $id);
            $soal = $this->db->get('soal')->result();
        }
        $this->response($soal, 200);
    }

    // insert new data to soal
    function index_post() {
        $data = array(
                    'id'        => $this->post('id'),
                    'soal'      => $this->post('question'),
                    'jwb_a'     => $this->post('jwb_a'),
                    'jwb_b'     => $this->post('jwb_b'),
                    'jwb_c'     => $this->post('jwb_c'),
                    'jwb_d'     => $this->post('jwb_d'));
        $insert = $this->db->insert('soal', $data);
        if ($insert) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

    // update data soal
    function index_put() {
        $id = $this->put('nim');
        $data = array(
                    'id'        => $this->post('id'),
                    'soal'      => $this->post('question'),
                    'jwb_a'     => $this->post('jwb_a'),
                    'jwb_b'     => $this->post('jwb_b'),
                    'jwb_c'     => $this->post('jwb_c'),
                    'jwb_d'     => $this->post('jwb_d'));
        $this->db->where('nim', $id);
        $update = $this->db->update('soal', $data);
        if ($update) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

    // delete soal
    function index_delete() {
        $id = $this->delete('id');
        $this->db->where('id', $id);
        $delete = $this->db->delete('soal');
        if ($delete) {
            $this->response(array('status' => 'success'), 201);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

}