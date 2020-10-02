version 1.0

task HivtraceStripDrams {
  input {
    String? d
    String? o
    String? i
  }
  command <<<
    hivtrace_strip_drams \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}