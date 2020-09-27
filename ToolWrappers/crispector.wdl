version 1.0

task Crispector {
  input {
    File? tx_in_one
    File? tx_in_two
    File? mock_in_one
    File? experiment_config
    File? report_output
    Int? cut_site_position
    File? crisp_ector_config
    String? fast_p_options_string
    Int? min_num_of_reads
    Int? min_read_length_without_primers
    Int? max_edit_distance_on_primers
    Float? amplicon_min_score
    Float? translocation_amplicon_min_score
    Float? min_editing_activity
    Float? translocation_p_value
    Boolean? disable_translocations
    Boolean? override_noise_estimation
    Float? confidence_interval
    Boolean? enable_substitutions
    Boolean? suppress_site_output
    Boolean? keep_intermediate_files
    Boolean? verbose
    File file
  }
  command <<<
    crispector \
      ~{file} \
      ~{if defined(tx_in_one) then ("--tx_in1 " +  '"' + tx_in_one + '"') else ""} \
      ~{if defined(tx_in_two) then ("--tx_in2 " +  '"' + tx_in_two + '"') else ""} \
      ~{if defined(mock_in_one) then ("--mock_in1 " +  '"' + mock_in_one + '"') else ""} \
      ~{if defined(experiment_config) then ("--experiment_config " +  '"' + experiment_config + '"') else ""} \
      ~{if defined(report_output) then ("--report_output " +  '"' + report_output + '"') else ""} \
      ~{if defined(cut_site_position) then ("--cut_site_position " +  '"' + cut_site_position + '"') else ""} \
      ~{if defined(crisp_ector_config) then ("--crispector_config " +  '"' + crisp_ector_config + '"') else ""} \
      ~{if defined(fast_p_options_string) then ("--fastp_options_string " +  '"' + fast_p_options_string + '"') else ""} \
      ~{if defined(min_num_of_reads) then ("--min_num_of_reads " +  '"' + min_num_of_reads + '"') else ""} \
      ~{if defined(min_read_length_without_primers) then ("--min_read_length_without_primers " +  '"' + min_read_length_without_primers + '"') else ""} \
      ~{if defined(max_edit_distance_on_primers) then ("--max_edit_distance_on_primers " +  '"' + max_edit_distance_on_primers + '"') else ""} \
      ~{if defined(amplicon_min_score) then ("--amplicon_min_score " +  '"' + amplicon_min_score + '"') else ""} \
      ~{if defined(translocation_amplicon_min_score) then ("--translocation_amplicon_min_score " +  '"' + translocation_amplicon_min_score + '"') else ""} \
      ~{if defined(min_editing_activity) then ("--min_editing_activity " +  '"' + min_editing_activity + '"') else ""} \
      ~{if defined(translocation_p_value) then ("--translocation_p_value " +  '"' + translocation_p_value + '"') else ""} \
      ~{if (disable_translocations) then "--disable_translocations" else ""} \
      ~{if (override_noise_estimation) then "--override_noise_estimation" else ""} \
      ~{if defined(confidence_interval) then ("--confidence_interval " +  '"' + confidence_interval + '"') else ""} \
      ~{if (enable_substitutions) then "--enable_substitutions" else ""} \
      ~{if (suppress_site_output) then "--suppress_site_output" else ""} \
      ~{if (keep_intermediate_files) then "--keep_intermediate_files" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    tx_in_one: "Tx read 1 input path or Tx merged FASTQ file"
    tx_in_two: "Tx read 2 input path, if FASTQ files aren't\\nmerged [OPTIONAL]"
    mock_in_one: "Mock read 1 input path or mock merged FASTQ"
    experiment_config: "A CSV (Comma Separated Values‏) file with\\nthe experiment data. Table has 11 columns:\\nSiteName, AmpliconReference, gRNA, OnTarget,\\nForwardPrimer, ReversePrimer,TxInput1Path\\nTxInput2Path, MockInput1Path,\\nMockInput2Path, DonorReference. The first 4\\ncolumns are required, the rest are optional.\\nHeader should be specified by the above\\norder. Please check the README on GitHub\\nfurther details and examples.  [required]"
    report_output: "Path to output folder"
    cut_site_position: "Expected cut-site position with respect to\\nthe 3' end of the provided sgRNA sequence.\\nNote, the sgRNA sequence must be entered\\nwithout the PAM.  [default: -3]"
    crisp_ector_config: "Path to crispector configuration in YAML\\nformat.See \\\"Advanced usage\\\" section in\\nREADME on GitHub for further."
    fast_p_options_string: "Try \\\"fastp --help\\\" for more details"
    min_num_of_reads: "Minimum number of reads (per locus site) to\\nevaluate edit events  [default: 500]"
    min_read_length_without_primers: "Filter out any read shorter than\\nmin_read_length_without_primers + length of\\nforward and reverse primers. This threshold\\nfilters primer-dimmer effect reads.\\n[default: 10]"
    max_edit_distance_on_primers: "Maximum edit distance to consider a read\\nprefix (or suffix) as a match for a primer.\\n[default: 8]"
    amplicon_min_score: "RANGE\\nMinimum normalized alignment score to\\nconsider a read alignment as valid.\\nNormalized alignment score is defined as the\\nNeedleman-Wunch alignment score divided by\\nthe maximum possible score. Below this\\nalignment threshold, reads are discarded.\\n[default: 30]"
    translocation_amplicon_min_score: "RANGE\\nMinimum alignment score to consider a read\\nwith primer inconsistency as a possible\\ntranslocation. Should be higher than\\n--amplicon_min_score, because translocations\\nreads are noisier.Score is normalized\\nbetween 0 (not even one bp match) to 100\\n(read is identical to  [default: 80]"
    min_editing_activity: "RANGE\\nMinimum editing activity (%). Sites with\\nediting activity lower than the minimum,\\nwill be discarded from the translocation\\ndetection.  [default: 0.1]"
    translocation_p_value: "RANGE\\nTranslocations statistical significance\\nlevel. This threshold is applied on the\\ncorrected p_value,FDR (false discovery\\nrate).  [default: 0.05]"
    disable_translocations: "Disable translocations detection  [default:\\nFalse]"
    override_noise_estimation: "Override noise estimation with default q\\nparameter from crispector_config file. It's\\nadvisable to set this flag for experiment\\nwith a low number of off-target sites (<5).\\nq is defined as the probability of an indel\\nto occur through an edit event. Check\\nCRISPECTOR paper for more details.\\n[default: False]"
    confidence_interval: "RANGE\\nConfidence interval for the evaluated\\nediting activity  [default: 0.95]"
    enable_substitutions: "Enable substitutions events for the\\nquantification of edit events  [default:\\nFalse]"
    suppress_site_output: "Do not create plots for sites (save memory\\nand runtime)  [default: False]"
    keep_intermediate_files: "Keep intermediate files for debug purposes\\n[default: False; required]"
    verbose: "Higher verbosity  [default: False]"
    file: "-m_r2, --mock_in2 PATH          Mock read read 2 input path, if FASTQ files"
  }
  output {
    File out_stdout = stdout()
    File out_report_output = "${in_report_output}"
  }
}