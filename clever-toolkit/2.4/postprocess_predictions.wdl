version 1.0

task PostprocessPredictions {
  input {
    Int? minimum_expected_support_deletion
    Int? minimum_expected_support_insertion
    String? cov_bal
    Int? minimum_coverage_clique
    Int? minimum_individual_coverage
    Boolean? reevaluate_cliques_lead
    String? stddev
    String? also_store_output
    String? filename_read_samplenames
    Boolean? only_del
    Boolean? only_ins
    Boolean? vcf
  }
  command <<<
    postprocess-predictions \
      ~{if defined(minimum_expected_support_deletion) then ("-d " +  '"' + minimum_expected_support_deletion + '"') else ""} \
      ~{if defined(minimum_expected_support_insertion) then ("-i " +  '"' + minimum_expected_support_insertion + '"') else ""} \
      ~{if defined(cov_bal) then ("--covbal " +  '"' + cov_bal + '"') else ""} \
      ~{if defined(minimum_coverage_clique) then ("-c " +  '"' + minimum_coverage_clique + '"') else ""} \
      ~{if defined(minimum_individual_coverage) then ("-C " +  '"' + minimum_individual_coverage + '"') else ""} \
      ~{true="-R" false="" reevaluate_cliques_lead} \
      ~{if defined(stddev) then ("--stddev " +  '"' + stddev + '"') else ""} \
      ~{if defined(also_store_output) then ("-S " +  '"' + also_store_output + '"') else ""} \
      ~{if defined(filename_read_samplenames) then ("-N " +  '"' + filename_read_samplenames + '"') else ""} \
      ~{true="--only-del" false="" only_del} \
      ~{true="--only-ins" false="" only_ins} \
      ~{true="--vcf" false="" vcf}
  >>>
  parameter_meta {
    minimum_expected_support_deletion: "Minimum expected support for deletion cliques (cliques with lower support are discarded)."
    minimum_expected_support_insertion: "Minimum expected support for insertion cliques (cliques with lower support are discarded)."
    cov_bal: "Minimum coverage balance (=support/coverage). Filter is applied after merging (default: disabled)."
    minimum_coverage_clique: "Minimum coverage at clique center."
    minimum_individual_coverage: "Minimum individual coverage at clique center, that is, only cliques are retains for which ALL individuals have at least the given coverage."
    reevaluate_cliques_lead: "Re-evaluate which cliques lead to which sets of individuals (requires standard deviation to be given)."
    stddev: "Standard deviation of insert size (necessary for some options)."
    also_store_output: "Also store output in separate files for each sample. Parameter: prefix of filenames for samplewise output."
    filename_read_samplenames: "Filename to read samplenames from."
    only_del: "Only process deletions."
    only_ins: "Only process insertions."
    vcf: "Output VCF format."
  }
}