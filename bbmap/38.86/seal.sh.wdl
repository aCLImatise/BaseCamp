version 1.0

task Sealsh {
  input {
    Boolean? x_mx
    Boolean? e_oom
    Boolean? da
    String validated_dot
    String time_dot
    String discarded_dot
  }
  command <<<
    seal_sh \
      ~{validated_dot} \
      ~{time_dot} \
      ~{discarded_dot} \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if (e_oom) then "-eoom" else ""} \
      ~{if (da) then "-da" else ""}
  >>>
  parameter_meta {
    x_mx: "This will set Java's memory usage, overriding autodetection.\\n-Xmx20g will specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\\nThe max is typically 85% of physical memory."
    e_oom: "This flag will cause the process to exit if an\\nout-of-memory exception occurs.  Requires Java 8u92+."
    da: "Disable assertions."
    validated_dot: "If this is set to false and processcontainedref"
    time_dot: "monitor=600,0.01 would kill after 600 seconds "
    discarded_dot: "Pairs will be discarded only if both are shorter."
  }
  output {
    File out_stdout = stdout()
  }
}