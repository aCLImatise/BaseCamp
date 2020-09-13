version 1.0

task Ctg2umdcontig {
  input {
    File file_dot_ctg
    File file_dot_id_map
    String? tigr
  }
  command <<<
    ctg2umdcontig \
      ~{file_dot_ctg} \
      ~{file_dot_id_map} \
      ~{tigr}
  >>>
  parameter_meta {
    file_dot_ctg: ""
    file_dot_id_map: ""
    tigr: ""
  }
  output {
    File out_stdout = stdout()
  }
}