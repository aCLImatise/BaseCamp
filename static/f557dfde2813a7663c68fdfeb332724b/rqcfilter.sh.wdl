version 1.0

task Rqcfiltersh {
  input {
    Boolean? x_mx
    Boolean? e_oom
    Boolean? da
    Int rqc_filter_two_dots_h
    String in
  }
  command <<<
    rqcfilter_sh \
      ~{rqc_filter_two_dots_h} \
      ~{in} \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if (e_oom) then "-eoom" else ""} \
      ~{if (da) then "-da" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    x_mx: "This will set Java's memory usage, overriding autodetection.\\n-Xmx20g will specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\\nThe max is typically 85% of physical memory."
    e_oom: "This flag will cause the process to exit if an\\nout-of-memory exception occurs.  Requires Java 8u92+."
    da: "Disable assertions."
    rqc_filter_two_dots_h: ""
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}