version 1.0

task Dot2ct {
  input {
    String bracket_file
    String ct_file
  }
  command <<<
    dot2ct \
      ~{bracket_file} \
      ~{ct_file}
  >>>
  parameter_meta {
    bracket_file: ""
    ct_file: ""
  }
}