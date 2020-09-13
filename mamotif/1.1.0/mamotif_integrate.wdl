version 1.0

task MamotifIntegrate {
  input {
    Boolean? verbose
    File? manorm_result_sample
    File? motifscan_result_sample
    Boolean? negative
    String? genome_name_required
    Boolean? split
    Int? upstream
    Int? downstream
    String? correction
    Directory? output_dir
  }
  command <<<
    mamotif integrate \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(manorm_result_sample) then ("-i " +  '"' + manorm_result_sample + '"') else ""} \
      ~{if defined(motifscan_result_sample) then ("-m " +  '"' + motifscan_result_sample + '"') else ""} \
      ~{if (negative) then "--negative" else ""} \
      ~{if defined(genome_name_required) then ("-g " +  '"' + genome_name_required + '"') else ""} \
      ~{if (split) then "--split" else ""} \
      ~{if defined(upstream) then ("--upstream " +  '"' + upstream + '"') else ""} \
      ~{if defined(downstream) then ("--downstream " +  '"' + downstream + '"') else ""} \
      ~{if defined(correction) then ("--correction " +  '"' + correction + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Enable verbose log messages."
    manorm_result_sample: "MAnorm result for sample A or B (A/B_MAvalues.xls)."
    motifscan_result_sample: "MotifScan result for sample A or B\\n(motif_sites_number.xls)."
    negative: "Convert M=log2(A/B) to -M=log2(B/A). Required when\\nfinding co-factors for sample B."
    genome_name_required: "Genome name. Required if `--split` is enabled."
    split: "Split genomic regions into promoter/distal regions and\\nrun separately."
    upstream: "TSS upstream distance for promoters. Default: 4000"
    downstream: "TSS downstream distance for promoters. Default: 2000"
    correction: "Method for multiple testing correction. Default:\\nbenjamin"
    output_dir: "Directory to write output files."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}