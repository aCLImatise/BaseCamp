version 1.0

task Mcxrand {
  input {
    String? imx
  }
  command <<<
    mcxrand \
      ~{if defined(imx) then ("-imx " +  '"' + imx + '"') else ""}
  >>>
  parameter_meta {
    imx: ""
  }
}