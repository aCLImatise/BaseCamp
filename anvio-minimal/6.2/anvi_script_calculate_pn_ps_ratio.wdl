version 1.0

task AnviScriptCalculatePnPsRatio {
  input {
    String? engine
    String? sa_av_table
    String? scv_table
    String? contigs_db
    Float? min_departure_from_consensus
    Int? minimum_num_variants
    Int? min_coverage
    String? output_dir
  }
  command <<<
    anvi-script-calculate-pn-ps-ratio \
      ~{if defined(engine) then ("--engine " +  '"' + engine + '"') else ""} \
      ~{if defined(sa_av_table) then ("--saav-table " +  '"' + sa_av_table + '"') else ""} \
      ~{if defined(scv_table) then ("--scv-table " +  '"' + scv_table + '"') else ""} \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(min_departure_from_consensus) then ("--min-departure-from-consensus " +  '"' + min_departure_from_consensus + '"') else ""} \
      ~{if defined(minimum_num_variants) then ("--minimum-num-variants " +  '"' + minimum_num_variants + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    engine: "and the output filename."
    sa_av_table: "Filepath to the SAAV table."
    scv_table: "Filepath to the SCV table."
    contigs_db: "Filepath to the contigs database used to generate variability tables."
    min_departure_from_consensus: "Variants (either SCVs or SAAVs) will be ignored if they have a departure from consensus less than this value. Note: Keep in mind you may have already supplied this parameter during anvi-gen-variability- profile. The default value is \"0.10\"."
    minimum_num_variants: "Ignore genes with less than this number of single codon variants. This avoids being impressed by pN/pS values of infinite, when in reality the gene had a single SAAV and no synonymous SCVs. The default is 4 to ensure a default value with some level of statistical importance."
    min_coverage: "If the coverage value at a codon is less than this amount, any SAAVs or SCVs associated with it will be ignored. The default is 30."
    output_dir: "Directory path for output files"
  }
}