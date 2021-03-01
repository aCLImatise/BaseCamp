version 1.0

task Countsharedlinessh {
  input {
    Boolean? x_mx
    Boolean? e_oom
    Boolean? da
    Int in_one
  }
  command <<<
    countsharedlines_sh \
      ~{in_one} \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if (e_oom) then "-eoom" else ""} \
      ~{if (da) then "-da" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    x_mx: "This will set Java's memory usage, overriding autodetection.\\n-Xmx20g will specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\\nThe max is typically 85% of physical memory."
    e_oom: "This flag will cause the process to exit if an out-of-memory\\nexception occurs.  Requires Java 8u92+."
    da: "Disable assertions."
    in_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}