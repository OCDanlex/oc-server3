<?php
  $rootpath = '../../';
  header('Content-type: text/html; charset=utf-8');
  require('../../lib/common.inc.php');

  $n = 1;
  $rs = sql('SELECT `user`.`username`, `stat_user`.`found` FROM `stat_user` INNER JOIN `user` on `stat_user`.`user_id`=`user`.`user_id` ORDER BY `stat_user`.`found` DESC LIMIT 100');
  while ($r = sql_fetch_assoc($rs))
  {
    echo $n . ' ' . $r['username'] . ': ' . $r['found'] . "\n";
    $n++;
  }
  mysql_free_result($rs);
?>
