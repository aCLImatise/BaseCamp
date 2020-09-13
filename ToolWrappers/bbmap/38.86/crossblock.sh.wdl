version 1.0

task Crossblocksh {
  input {
    Boolean? x_mx
    Boolean? e_oom
    Boolean? da
    String decontaminate_dots_h
    String reads
  }
  command <<<
    crossblock_sh \
      ~{decontaminate_dots_h} \
      ~{reads} \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if (e_oom) then "-eoom" else ""} \
      ~{if (da) then "-da" else ""}
  >>>
  parameter_meta {
    x_mx: "This will set Java's memory usage, overriding autodetection.\\n-Xmx20g will specify 20 gigs of RAM, and -Xmx800m will specify 800 megs.\\nThe max is typically 85% of physical memory."
    e_oom: "This flag will cause the process to exit if an\\nout-of-memory exception occurs.  Requires Java 8u92+."
    da: "Disable assertions."
    decontaminate_dots_h: ""
    reads: ""
  }
  output {
    File out_stdout = stdout()
  }
}