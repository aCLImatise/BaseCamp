version 1.0

task Mcxdump {
  input {
    String? imx
    String? o
  }
  command <<<
    mcxdump \
      ~{if defined(imx) then ("-imx " +  '"' + imx + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    imx: ""
    o: ""
  }
}