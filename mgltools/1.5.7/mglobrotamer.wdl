version 1.0

task Mglobrotamer {
  input {
    String ob_rotamer
    File file
  }
  command <<<
    mglobrotamer \
      ~{ob_rotamer} \
      ~{file}
  >>>
  parameter_meta {
    ob_rotamer: ""
    file: ""
  }
}