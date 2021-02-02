version 1.0

task CameoSearchID {
  input {
    String cameo
    String search
    String product
  }
  command <<<
    cameo search ID_ \
      ~{cameo} \
      ~{search} \
      ~{product}
  >>>
  parameter_meta {
    cameo: ""
    search: ""
    product: ""
  }
  output {
    File out_stdout = stdout()
  }
}