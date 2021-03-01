version 1.0

task Postprocesspredictions {
  input {
    String? minimum_expected_support_discarded
    String? minimum_expected_support_cliquescliques
    String? cov_bal
    Int? minimum_coverage_clique
    String? minimum_individual_coverage
    Boolean? reevaluate_cliques_lead
    Int? stddev
    String? also_store_output
    File? filename_read_samplenames
    Boolean? only_del
    Boolean? only_ins
    Boolean? vcf
  }
  command <<<
    postprocess_predictions \
      ~{if defined(minimum_expected_support_discarded) then ("-d " +  '"' + minimum_expected_support_discarded + '"') else ""} \
      ~{if defined(minimum_expected_support_cliquescliques) then ("-i " +  '"' + minimum_expected_support_cliquescliques + '"') else ""} \
      ~{if defined(cov_bal) then ("--covbal " +  '"' + cov_bal + '"') else ""} \
      ~{if defined(minimum_coverage_clique) then ("-c " +  '"' + minimum_coverage_clique + '"') else ""} \
      ~{if defined(minimum_individual_coverage) then ("-C " +  '"' + minimum_individual_coverage + '"') else ""} \
      ~{if (reevaluate_cliques_lead) then "-R" else ""} \
      ~{if defined(stddev) then ("--stddev " +  '"' + stddev + '"') else ""} \
      ~{if defined(also_store_output) then ("-S " +  '"' + also_store_output + '"') else ""} \
      ~{if defined(filename_read_samplenames) then ("-N " +  '"' + filename_read_samplenames + '"') else ""} \
      ~{if (only_del) then "--only-del" else ""} \
      ~{if (only_ins) then "--only-ins" else ""} \
      ~{if (vcf) then "--vcf" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    minimum_expected_support_discarded: "Minimum expected support for deletion cliques (cliques\\nwith lower support are discarded)."
    minimum_expected_support_cliquescliques: "Minimum expected support for insertion cliques\\n(cliques with lower support are discarded)."
    cov_bal: "Minimum coverage balance (=support/coverage). Filter\\nis applied after merging (default: disabled)."
    minimum_coverage_clique: "Minimum coverage at clique center."
    minimum_individual_coverage: "Minimum individual coverage at clique center, that is,\\nonly cliques are retains for which ALL individuals\\nhave at least the given coverage."
    reevaluate_cliques_lead: "Re-evaluate which cliques lead to which sets of\\nindividuals (requires standard deviation to be given)."
    stddev: "Standard deviation of insert size (necessary for some\\noptions)."
    also_store_output: "Also store output in separate files for each sample.\\nParameter: prefix of filenames for samplewise output."
    filename_read_samplenames: "Filename to read samplenames from."
    only_del: "Only process deletions."
    only_ins: "Only process insertions."
    vcf: "Output VCF format."
  }
  output {
    File out_stdout = stdout()
  }
}