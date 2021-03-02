version 1.0

task Sketchsh {
  input {
    Boolean? x_mx
    Boolean? e_oom
    Boolean? da
    String loading_dot
    String nucleotides_dot
    String sequences_dot
  }
  command <<<
    sketch_sh \
      ~{loading_dot} \
      ~{nucleotides_dot} \
      ~{sequences_dot} \
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
    loading_dot: "Independent of the number of sketches produced; "
    nucleotides_dot: "Designed for prokaryotes."
    sequences_dot: "This includes sequences with no taxid,"
  }
  output {
    File out_stdout = stdout()
  }
}