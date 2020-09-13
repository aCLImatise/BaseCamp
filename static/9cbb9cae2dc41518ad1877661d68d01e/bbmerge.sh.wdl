version 1.0

task Bbmergesh {
  input {
    Boolean? x_mx
    Boolean? e_oom
    Boolean? da
  }
  command <<<
    bbmerge_sh \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if (e_oom) then "-eoom" else ""} \
      ~{if (da) then "-da" else ""}
  >>>
  parameter_meta {
    x_mx: "This will set Java's memory usage,\\noverriding autodetection.\\nFor example, -Xmx400m will specify 400 MB RAM."
    e_oom: "This flag will cause the process to exit if an\\nout-of-memory exception occurs.  Requires Java 8u92+."
    da: "Disable assertions."
  }
  output {
    File out_stdout = stdout()
  }
}