version 1.0

task Mergeribosh {
  input {
    Boolean? x_mx
    Boolean? e_oom
    Boolean? da
    String sequence_dot
  }
  command <<<
    mergeribo_sh \
      ~{sequence_dot} \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if (e_oom) then "-eoom" else ""} \
      ~{if (da) then "-da" else ""}
  >>>
  parameter_meta {
    x_mx: "This will set Java's memory usage, overriding autodetection.\\n-Xmx20g will specify 20 gigs of RAM, and -Xmx200m will\\nspecify 200 megs. The max is typically 85% of physical memory."
    e_oom: "This flag will cause the process to exit if an out-of-memory\\nexception occurs.  Requires Java 8u92+."
    da: "Disable assertions."
    sequence_dot: "Mutually exclusive with best."
  }
  output {
    File out_stdout = stdout()
  }
}