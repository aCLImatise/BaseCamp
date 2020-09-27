version 1.0

task MegagtaFindstart {
  input {
    String find_start
    String ref_seq
    String read_dot_lib
    String k_size
  }
  command <<<
    megagta findstart \
      ~{find_start} \
      ~{ref_seq} \
      ~{read_dot_lib} \
      ~{k_size}
  >>>
  parameter_meta {
    find_start: ""
    ref_seq: ""
    read_dot_lib: ""
    k_size: ""
  }
  output {
    File out_stdout = stdout()
  }
}