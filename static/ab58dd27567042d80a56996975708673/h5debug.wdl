version 1.0

task H5debug {
  input {
    File filename
    String? signature_addr
    String? extra
  }
  command <<<
    h5debug \
      ~{filename} \
      ~{signature_addr} \
      ~{extra}
  >>>
  parameter_meta {
    filename: ""
    signature_addr: ""
    extra: ""
  }
  output {
    File out_stdout = stdout()
  }
}