version 1.0

task Anviscriptsnvstointeractive {
  input {
    Float? min_departure_from_consensus
    Float? max_departure_from_consensus
    Float? min_departure_from_reference
    Float? max_departure_from_reference
    Boolean? display_dep_from_reference
    Boolean? only_in_genes
    Boolean? just_do_it
    String profile
    String regions_dot
    String it_dot
  }
  command <<<
    anvi_script_snvs_to_interactive \
      ~{profile} \
      ~{regions_dot} \
      ~{it_dot} \
      ~{if defined(min_departure_from_consensus) then ("--min-departure-from-consensus " +  '"' + min_departure_from_consensus + '"') else ""} \
      ~{if defined(max_departure_from_consensus) then ("--max-departure-from-consensus " +  '"' + max_departure_from_consensus + '"') else ""} \
      ~{if defined(min_departure_from_reference) then ("--min-departure-from-reference " +  '"' + min_departure_from_reference + '"') else ""} \
      ~{if defined(max_departure_from_reference) then ("--max-departure-from-reference " +  '"' + max_departure_from_reference + '"') else ""} \
      ~{if (display_dep_from_reference) then "--display-dep-from-reference" else ""} \
      ~{if (only_in_genes) then "--only-in-genes" else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_departure_from_consensus: "Minimum departure from consensus at a given variable\\nnucleotide position. The default is 0.00."
    max_departure_from_consensus: "Maximum departure from consensus at a given variable\\nnucleotide position. The default is 1.00."
    min_departure_from_reference: "Minimum departure from consensus at a given variable\\nnucleotide position. The default is 0.00."
    max_departure_from_reference: "Maximum departure from consensus at a given variable\\nnucleotide position. The default is 1.00."
    display_dep_from_reference: "By default this program will generate a matrix file\\nthat displays departure from consensus values. This\\nflag will switch to departure from reference."
    only_in_genes: "With this flag you will ignore SNVs in non-coding"
    just_do_it: "Don't bother me with questions or warnings, just do"
    profile: "optional arguments:"
    regions_dot: "--random INTEGER      Use this parameter to randomly subset your data. If"
    it_dot: "-o DIR_PATH, --output-dir DIR_PATH"
  }
  output {
    File out_stdout = stdout()
  }
}