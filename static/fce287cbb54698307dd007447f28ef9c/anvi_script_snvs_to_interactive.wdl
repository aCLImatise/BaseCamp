version 1.0

task Anviscriptsnvstointeractive {
  input {
    Float? min_departure_from_consensus
    Float? max_departure_from_consensus
    Float? min_departure_from_reference
    Float? max_departure_from_reference
    Boolean? display_dep_from_reference
    Boolean? only_in_genes
    Int? random
    Boolean? just_do_it
    File? output_dir
    String profile
    String variability_profile_txt
    String interactive
  }
  command <<<
    anvi_script_snvs_to_interactive \
      ~{profile} \
      ~{variability_profile_txt} \
      ~{interactive} \
      ~{if defined(min_departure_from_consensus) then ("--min-departure-from-consensus " +  '"' + min_departure_from_consensus + '"') else ""} \
      ~{if defined(max_departure_from_consensus) then ("--max-departure-from-consensus " +  '"' + max_departure_from_consensus + '"') else ""} \
      ~{if defined(min_departure_from_reference) then ("--min-departure-from-reference " +  '"' + min_departure_from_reference + '"') else ""} \
      ~{if defined(max_departure_from_reference) then ("--max-departure-from-reference " +  '"' + max_departure_from_reference + '"') else ""} \
      ~{if (display_dep_from_reference) then "--display-dep-from-reference" else ""} \
      ~{if (only_in_genes) then "--only-in-genes" else ""} \
      ~{if defined(random) then ("--random " +  '"' + random + '"') else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    min_departure_from_consensus: "Minimum departure from consensus at a given variable\\nnucleotide position. The default is 0.00."
    max_departure_from_consensus: "Maximum departure from consensus at a given variable\\nnucleotide position. The default is 1.00."
    min_departure_from_reference: "Minimum departure from consensus at a given variable\\nnucleotide position. The default is 0.00."
    max_departure_from_reference: "Maximum departure from consensus at a given variable\\nnucleotide position. The default is 1.00."
    display_dep_from_reference: "By default this program will generate a matrix file\\nthat displays departure from consensus values. This\\nflag will switch to departure from reference.\\n(default: False)"
    only_in_genes: "With this flag you will ignore SNVs in non-coding\\nregions. (default: False)"
    random: "Use this parameter to randomly subset your data. If\\nthere are too many SNV positions, this script may take\\nforever to finish. You should *never* let it try to\\ndeal with more than 25-30K points, but an ideal would\\nbe around 4-5 thousand. (default: None)"
    just_do_it: "Don't bother me with questions or warnings, just do\\nit. (default: False)"
    output_dir: "Directory path for output files (default: None)"
    profile: "optional arguments:"
    variability_profile_txt: "🍕 Can provide: "
    interactive: "🍺 More on `anvi-script-snvs-to-interactive`:"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}