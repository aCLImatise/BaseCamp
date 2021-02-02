version 1.0

task VawkVcf {
  input {
    Boolean? debug
    Boolean? header
    String? c
    String? v
    String va_wk
    String cmd
    String? vcf
  }
  command <<<
    vawk vcf \
      ~{va_wk} \
      ~{cmd} \
      ~{vcf} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""}
  >>>
  parameter_meta {
    debug: ""
    header: ""
    c: ""
    v: ""
    va_wk: ""
    cmd: ""
    vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}