version 1.0

task CircosAmbiguous {
  input {
    String hood
  }
  command <<<
    circos ambiguous_ \
      ~{hood}
  >>>
  parameter_meta {
    hood: "http://www.circos.ca/documentation/tutorials/configuration/debugging"
  }
  output {
    File out_stdout = stdout()
  }
}