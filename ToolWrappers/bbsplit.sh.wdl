version 1.0

task Bbsplitsh {
  input {
    Boolean? x_mx
    Boolean? e_oom
    Boolean? da
    String var_3
    String var_4
    String random
    String retain_topscoring_sites
    String var_7
    String var_8
    String write_copy_output
    String split
  }
  command <<<
    bbsplit_sh \
      ~{var_3} \
      ~{var_4} \
      ~{random} \
      ~{retain_topscoring_sites} \
      ~{var_7} \
      ~{var_8} \
      ~{write_copy_output} \
      ~{split} \
      ~{if (x_mx) then "-Xmx" else ""} \
      ~{if (e_oom) then "-eoom" else ""} \
      ~{if (da) then "-da" else ""}
  >>>
  parameter_meta {
    x_mx: "This will set Java's memory usage, overriding autodetection.\\n-Xmx20g will specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\\nThe max is typically 85% of physical memory."
    e_oom: "This flag will cause the process to exit if an\\nout-of-memory exception occurs.  Requires Java 8u92+."
    da: "Disable assertions."
    var_3: "(use the first best site)"
    var_4: "(consider unmapped)"
    random: "(select one top-scoring site randomly)"
    retain_topscoring_sites: "(retain all top-scoring sites.  Does not work yet with SAM output)"
    var_7: "(use the first best site)"
    var_8: "(consider unmapped)"
    write_copy_output: "(write a copy to the output for each reference to which it maps)"
    split: "(write a copy to the AMBIGUOUS_ output for each reference to which it maps)"
  }
  output {
    File out_stdout = stdout()
  }
}