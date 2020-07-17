version 1.0

task VawkVcf {
  input {
    String? v
    String? c
    Boolean? header
    Boolean? debug
    String va_wk
    String cmd
    String? vcf
  }
  command <<<
    vawk vcf \
      ~{va_wk} \
      ~{cmd} \
      ~{vcf} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{true="--header" false="" header} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    v: ""
    c: ""
    header: ""
    debug: ""
    va_wk: ""
    cmd: ""
    vcf: ""
  }
}