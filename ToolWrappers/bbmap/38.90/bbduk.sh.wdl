version 1.0

task Bbduksh {
  input {
    Boolean? x_mx
    Boolean? e_oom
    Boolean? da
    String km_ers_dot
    String discarded_dot
  }
  command <<<
    bbduk_sh \
      ~{km_ers_dot} \
      ~{discarded_dot} \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if (e_oom) then "-eoom" else ""} \
      ~{if (da) then "-da" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    x_mx: "This will set Java's memory usage, overriding autodetection.\\n-Xmx20g will\\nspecify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\\nThe max is typically 85% of physical memory."
    e_oom: "This flag will cause the process to exit if an\\nout-of-memory exception occurs.  Requires Java 8u92+."
    da: "Disable assertions."
    km_ers_dot: "1 means use all, 2 means use every other kmer, etc."
    discarded_dot: "Pairs will be discarded if both are shorter."
  }
  output {
    File out_stdout = stdout()
  }
}