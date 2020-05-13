version 1.0

task Mcxrand {
  input {
    String imxImx
  }
  command <<<
    mcxrand \
      ~{if defined(imxImx) then ("-imx " +  '"' + imxImx + '"') else ""}
  >>>
}