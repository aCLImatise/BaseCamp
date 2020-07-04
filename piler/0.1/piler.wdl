version 1.0

task Piler {
  input {
    String? trs
    String? out
  }
  command <<<
    piler \
      ~{if defined(trs) then ("-trs " +  '"' + trs + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    trs: ""
    out: ""
  }
}