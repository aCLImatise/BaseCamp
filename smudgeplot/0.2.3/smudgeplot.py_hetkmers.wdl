version 1.0

task SmudgeplotpyHetkmers {
  input {
    String? pattern_used_name
    Boolean? middle
  }
  command <<<
    smudgeplot_py hetkmers \
      ~{if defined(pattern_used_name) then ("-o " +  '"' + pattern_used_name + '"') else ""} \
      ~{if (middle) then "--middle" else ""}
  >>>
  parameter_meta {
    pattern_used_name: "The pattern used to name the output (kmerpairs)."
    middle: "Get all kmer pairs that are exactly the same but in the middle\\nnt. When this flag is used, the input dump must be\\nalphabetically sorted/ (default: different by a SNP at any\\nposition).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}