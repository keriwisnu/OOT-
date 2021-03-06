<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class FileModel extends CI_Model {
 
    public function insert_file($filename, $title, $userid)
    {
        $data = array(
            'filename'      => $filename,
            'title'         => $title,
            'userid'        => $userid
        );
        $this->db->insert('files', $data);
        return $this->db->insert_id();
    }
    
    public function get_files()
    {
        return $this->db->select()
            ->order_by('id','desc')
                ->get('files',1)
                
                ->result();
    }
    
    public function delete_file($file_id)
    {
        $file = $this->get_file($file_id);
        if (!$this->db->where('id', $file_id)->delete('files'))
        {
            return FALSE;
        }
        unlink('./files/' . $file->filename);    
        return TRUE;
    }
 
    public function get_file($file_id)
    {
        return $this->db->select()
                ->from('files')
                ->where('id', $file_id)
                ->get()
                ->row();
    }
 
}