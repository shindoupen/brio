<?php
class sql extends dbconn {
    	public function __construct()
    	{
    		$this->initDBO();
    	}
      public function getMenu()
      {
           $db = $this->dblocal;
           try
           {
            $stmt = $db->prepare("select * from r_menu order by urutan");
            $stmt->execute();
            $stat[0] = true;
            $stat[1] = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $stat;
          }
          catch(PDOException $ex)
          {
            $stat[0] = false;
            $stat[1] = $ex->getMessage();
            return $stat;
          }
      }
      public function getSubMenu($id)
      {
          $db = $this->dblocal;
          try
          {
            $stmt = $db->prepare("select * from r_menu_sub where id_menu = :id order by urutan_sub_menu asc");
            $stmt->bindParam("id",$id);
            $stmt->execute();
            $stat[0] = true;
            $stat[1] = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $stat;
          }
          catch(PDOException $ex)
          {
            $stat[0] = false;
            $stat[1] = $ex->getMessage();
            return $stat;
          }
      }
      public function getSubMenuLevel2($id)
      {
          $db = $this->dblocal;
          try
          {
            $stmt = $db->prepare("select * from r_menu_sub_level_2 where id_sub_menu = :id order by urutan_sub_menu asc");
            $stmt->bindParam("id",$id);
            $stmt->execute();
            $stat[0] = true;
            $stat[1] = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $stat;
          }
          catch(PDOException $ex)
          {
            $stat[0] = false;
            $stat[1] = $ex->getMessage();
            return $stat;
          }
      }
}

?>
