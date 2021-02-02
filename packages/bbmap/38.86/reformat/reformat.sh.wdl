version 1.0

task Reformatsh {
  input {
    Int? disabled_filter_reads
    Boolean? x_mx
    Boolean? e_oom
    Boolean? da
    String in
  }
  command <<<
    reformat_sh \
      ~{in} \
      ~{if defined(disabled_filter_reads) then ("-1 " +  '"' + disabled_filter_reads + '"') else ""} \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if (e_oom) then "-eoom" else ""} \
      ~{if (da) then "-da" else ""}
  >>>
  parameter_meta {
    disabled_filter_reads: "disabled; to filter reads with any of a symbol type, set to 0."
    x_mx: "This will set Java's memory usage, overriding autodetection.\\n-Xmx20g will specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\\nThe max is typically 85% of physical memory."
    e_oom: "This flag will cause the process to exit if an out-of-memory exception occurs.  Requires Java 8u92+."
    da: "Disable assertions."
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}