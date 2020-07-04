version 1.0

task Refold {
  input {
    String save_file
    String ct_file
  }
  command <<<
    refold \
      ~{save_file} \
      ~{ct_file}
  >>>
  parameter_meta {
    save_file: ""
    ct_file: ""
  }
}