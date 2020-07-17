version 1.0

task Ct2rnaml {
  input {
    File file_dot_ct
  }
  command <<<
    ct2rnaml \
      ~{file_dot_ct}
  >>>
  parameter_meta {
    file_dot_ct: ""
  }
}