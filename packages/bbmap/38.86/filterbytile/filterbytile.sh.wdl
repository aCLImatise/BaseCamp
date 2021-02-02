version 1.0

task Filterbytilesh {
  input {
    Boolean? x_mx
    Boolean? e_oom
    Boolean? da
    String in
  }
  command <<<
    filterbytile_sh \
      ~{in} \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if (e_oom) then "-eoom" else ""} \
      ~{if (da) then "-da" else ""}
  >>>
  parameter_meta {
    x_mx: "This will set Java's memory usage, overriding autodetection.\\n-Xmx20g will specify 20 GB of RAM; -Xmx200m will specify\\n200 MB.  The max is typically 85% of physical memory."
    e_oom: "This flag will cause the process to exit if an\\nout-of-memory exception occurs.  Requires Java 8u92+."
    da: "Disable assertions."
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}