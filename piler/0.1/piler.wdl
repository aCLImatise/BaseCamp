version 1.0

task Piler {
  input {
    String trsTrs
    String outOut
  }
  command <<<
    piler \
      ~{if defined(trsTrs) then ("-trs " +  '"' + trsTrs + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""}
  >>>
}