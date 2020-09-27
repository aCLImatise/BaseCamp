version 1.0

task Sketchblacklist2sh {
  input {
    Boolean? x_mx
    Boolean? e_oom
    Boolean? da
    String sequences_dot
  }
  command <<<
    sketchblacklist2_sh \
      ~{sequences_dot} \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if (e_oom) then "-eoom" else ""} \
      ~{if (da) then "-da" else ""}
  >>>
  parameter_meta {
    x_mx: "This will set Java's memory usage, overriding autodetection.\\n-Xmx20g will specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\\nThe max is typically 85% of physical memory."
    e_oom: "This flag will cause the process to exit if an\\nout-of-memory exception occurs.  Requires Java 8u92+."
    da: "Disable assertions."
    sequences_dot: "This includes sequences with no taxid,"
  }
  output {
    File out_stdout = stdout()
  }
}