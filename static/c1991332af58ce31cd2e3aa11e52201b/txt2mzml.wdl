version 1.0

task Txt2mzml {
  input {
    File file_in
    File file_out
  }
  command <<<
    txt2mzml \
      ~{file_in} \
      ~{file_out}
  >>>
  parameter_meta {
    file_in: ""
    file_out: ""
  }
}