version 1.0

task PvacseqRun {
  input {
    Int? epitope_length
    Int? peptide_sequence_length
    Directory? ie_db_install_directory
    File? additional_input_file_list
    String? net_chop_method
    Boolean? net_mhc_stab
    Boolean? top_result_per_mutation
    String? top_score_metric
    Int? binding_threshold
    Int? minimum_fold_change
    Int? normal_cov
    Int? t_dna_cov
    Int? trna_cov
    Int? normal_vaf
    Int? t_dna_vaf
    Int? trna_vaf
    Int? expn_val
    Float? net_chop_threshold
    String? additional_report_columns
    Int? fast_a_size
    Int? ie_db_retries
    Int? downstream_sequence_length
    Boolean? keep_tmp_files
    String output_dir
    String input_file
    String sample_name
    String allele
    String spaces
  }
  command <<<
    pvacseq run \
      ~{output_dir} \
      ~{input_file} \
      ~{sample_name} \
      ~{allele} \
      ~{spaces} \
      ~{if defined(epitope_length) then ("--epitope-length " +  '"' + epitope_length + '"') else ""} \
      ~{if defined(peptide_sequence_length) then ("--peptide-sequence-length " +  '"' + peptide_sequence_length + '"') else ""} \
      ~{if defined(ie_db_install_directory) then ("--iedb-install-directory " +  '"' + ie_db_install_directory + '"') else ""} \
      ~{if defined(additional_input_file_list) then ("--additional-input-file-list " +  '"' + additional_input_file_list + '"') else ""} \
      ~{if defined(net_chop_method) then ("--net-chop-method " +  '"' + net_chop_method + '"') else ""} \
      ~{if (net_mhc_stab) then "--netmhc-stab" else ""} \
      ~{if (top_result_per_mutation) then "--top-result-per-mutation" else ""} \
      ~{if defined(top_score_metric) then ("--top-score-metric " +  '"' + top_score_metric + '"') else ""} \
      ~{if defined(binding_threshold) then ("--binding-threshold " +  '"' + binding_threshold + '"') else ""} \
      ~{if defined(minimum_fold_change) then ("--minimum-fold-change " +  '"' + minimum_fold_change + '"') else ""} \
      ~{if defined(normal_cov) then ("--normal-cov " +  '"' + normal_cov + '"') else ""} \
      ~{if defined(t_dna_cov) then ("--tdna-cov " +  '"' + t_dna_cov + '"') else ""} \
      ~{if defined(trna_cov) then ("--trna-cov " +  '"' + trna_cov + '"') else ""} \
      ~{if defined(normal_vaf) then ("--normal-vaf " +  '"' + normal_vaf + '"') else ""} \
      ~{if defined(t_dna_vaf) then ("--tdna-vaf " +  '"' + t_dna_vaf + '"') else ""} \
      ~{if defined(trna_vaf) then ("--trna-vaf " +  '"' + trna_vaf + '"') else ""} \
      ~{if defined(expn_val) then ("--expn-val " +  '"' + expn_val + '"') else ""} \
      ~{if defined(net_chop_threshold) then ("--net-chop-threshold " +  '"' + net_chop_threshold + '"') else ""} \
      ~{if defined(additional_report_columns) then ("--additional-report-columns " +  '"' + additional_report_columns + '"') else ""} \
      ~{if defined(fast_a_size) then ("--fasta-size " +  '"' + fast_a_size + '"') else ""} \
      ~{if defined(ie_db_retries) then ("--iedb-retries " +  '"' + ie_db_retries + '"') else ""} \
      ~{if defined(downstream_sequence_length) then ("--downstream-sequence-length " +  '"' + downstream_sequence_length + '"') else ""} \
      ~{if (keep_tmp_files) then "--keep-tmp-files" else ""}
  >>>
  parameter_meta {
    epitope_length: "Length of subpeptides (neoepitopes) to predict.\\nMultiple epitope lengths can be specified using a\\ncomma-separated list. Typical epitope lengths vary\\nbetween 8-11. Required for Class I prediction\\nalgorithms"
    peptide_sequence_length: "Length of the peptide sequence to use when creating\\nthe FASTA. Default: 21"
    ie_db_install_directory: "Directory that contains the local installation of IEDB\\nMHC I and/or MHC II"
    additional_input_file_list: "yaml file of additional files to be used as inputs,\\ne.g. cufflinks output files. For an example of this\\nyaml file run `pvacseq config_files\\nadditional_input_file_list`."
    net_chop_method: "NetChop prediction method to use (\\\"cterm\\\" for C term\\n3.0, \\\"20s\\\" for 20S 3.0)."
    net_mhc_stab: "Run NetMHCStabPan after all filtering and add\\nstability predictions to predicted epitopes"
    top_result_per_mutation: "Output only the top scoring result for each allele-\\npeptide length combination for each variant. Default:\\nFalse"
    top_score_metric: "The ic50 scoring metric to use when filtering epitopes\\nby binding-threshold or minimum fold change. lowest:\\nBest MT Score/Corresponding Fold Change - lowest MT\\nic50 binding score/corresponding fold change of all\\nchosen prediction methods. median: Median MT\\nScore/Median Fold Change - median MT ic50 binding\\nscore/fold change of all chosen prediction methods.\\nDefault: median"
    binding_threshold: "Report only epitopes where the mutant allele has ic50\\nbinding scores below this value. Default: 500"
    minimum_fold_change: "Minimum fold change between mutant binding score and\\nwild-type score. The default is 0, which filters no\\nresults, but 1 is often a sensible choice (requiring\\nthat binding is better to the MT than WT). Default: 0"
    normal_cov: "Normal Coverage Cutoff. Sites above this cutoff will\\nbe considered. Default: 5"
    t_dna_cov: "Tumor DNA Coverage Cutoff. Sites above this cutoff\\nwill be considered. Default: 10"
    trna_cov: "Tumor RNA Coverage Cutoff. Sites above this cutoff\\nwill be considered. Default: 10"
    normal_vaf: "Normal VAF Cutoff. Sites BELOW this cutoff in normal\\nwill be considered. Default: 2"
    t_dna_vaf: "Tumor DNA VAF Cutoff. Sites above this cutoff will be\\nconsidered. Default: 40"
    trna_vaf: "Tumor RNA VAF Cutoff. Sites above this cutoff will be\\nconsidered. Default: 40"
    expn_val: "Gene and Transcript Expression cutoff. Sites above\\nthis cutoff will be considered. Default: 1"
    net_chop_threshold: "NetChop prediction threshold. Default: 0.5"
    additional_report_columns: "Additional columns to output in the final report"
    fast_a_size: "Number of fasta entries per IEDB request. For some\\nresource-intensive prediction algorithms like\\nPickpocket and NetMHCpan it might be helpful to reduce\\nthis number. Needs to be an even number."
    ie_db_retries: "Number of retries when making requests to the IEDB\\nRESTful web interface. Must be less than or equal to\\n100.Default: 5"
    downstream_sequence_length: "Cap to limit the downstream sequence length for\\nframeshifts when creating the fasta file. Use 'full'\\nto include the full downstream sequence. Default: 1000"
    keep_tmp_files: "Keep intermediate output files. This migt be useful\\nfor debugging purposes.\\n"
    output_dir: "positional arguments:"
    input_file: "A VEP-annotated single-sample VCF containing\\ntranscript, Wildtype protein sequence, and Downstream\\nprotein sequence information"
    sample_name: "The name of the sample being processed. This will be\\nused as a prefix for output files"
    allele: "Name of the allele to use for epitope prediction.\\nMultiple alleles can be specified using a comma-\\nseparated list. For a list of available alleles, use:\\n`pvacseq valid_alleles`"
    spaces: "output_dir            The directory for writing all result files"
  }
  output {
    File out_stdout = stdout()
  }
}