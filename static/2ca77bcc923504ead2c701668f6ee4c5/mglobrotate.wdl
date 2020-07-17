version 1.0

task Mglobrotate {
  input {
    String ob_rotate
  }
  command <<<
    mglobrotate \
      ~{ob_rotate}
  >>>
  parameter_meta {
    ob_rotate: ""
  }
}