version 1.0

task Calctruequalitysh {
  input {
    Boolean? x_mx
    Boolean? e_oom
    Boolean? da
    String variants_dot
  }
  command <<<
    calctruequality_sh \
      ~{variants_dot} \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if (e_oom) then "-eoom" else ""} \
      ~{if (da) then "-da" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    x_mx: "This will set Java's memory usage, overriding autodetection.\\n-Xmx20g will specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\\nThe max is typically 85% of physical memory."
    e_oom: "This flag will cause the process to exit if an\\nout-of-memory exception occurs.  Requires Java 8u92+."
    da: "Disable assertions."
    variants_dot: "The format can be produced by CallVariants."
  }
  output {
    File out_stdout = stdout()
  }
}