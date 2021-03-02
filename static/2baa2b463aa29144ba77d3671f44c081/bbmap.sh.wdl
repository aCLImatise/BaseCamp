version 1.0

task Bbmapsh {
  input {
    Boolean? x_mx
    Boolean? e_oom
    Boolean? da
    String best
    String toss
    String random
    String all
    String orientation_dot
  }
  command <<<
    bbmap_sh \
      ~{best} \
      ~{toss} \
      ~{random} \
      ~{all} \
      ~{orientation_dot} \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if (e_oom) then "-eoom" else ""} \
      ~{if (da) then "-da" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    x_mx: "This will set Java's memory usage,\\noverriding autodetection.\\n-Xmx20g will specify 20 gigs of RAM, and -Xmx800m\\nwill specify 800 megs.  The max is typically 85% of\\nphysical memory.  The human genome requires around 24g,\\nor 12g with the 'usemodulo' flag.  The index uses\\nroughly 6 bytes per reference base."
    e_oom: "This flag will cause the process to exit if an\\nout-of-memory exception occurs.  Requires Java 8u92+."
    da: "Disable assertions."
    best: "(use the first best site)"
    toss: "(consider unmapped)"
    random: "(select one top-scoring site randomly)"
    all: "(retain all top-scoring sites)"
    orientation_dot: "Set to false for long-mate-pair libraries."
  }
  output {
    File out_stdout = stdout()
  }
}