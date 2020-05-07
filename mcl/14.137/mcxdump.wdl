version 1.0

task Mcxdump {
  input {
    String imxImx
    String oO
  }
  command <<<
    mcxdump \
      ~{if defined(imxImx) then ("-imx " +  '"' + imxImx + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}