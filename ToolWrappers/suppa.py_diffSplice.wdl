version 1.0

task SuppapyDiffSplice {
  input {
    String? method
    Array[String] psi
    Array[String] tpm
    File? input_file_eventtranscripts
    Int? area
    Int? lower_bound
    Boolean? paired
    Boolean? gene_correction
    Float? alpha
    Boolean? save_tpm_events
    Boolean? combination
    Boolean? median
    Float? tpm_threshold
    Int? nan_threshold
    String? name_output_files
    String? mode
  }
  command <<<
    suppa_py diffSplice \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(psi) then ("--psi " +  '"' + psi + '"') else ""} \
      ~{if defined(tpm) then ("--tpm " +  '"' + tpm + '"') else ""} \
      ~{if defined(input_file_eventtranscripts) then ("--input " +  '"' + input_file_eventtranscripts + '"') else ""} \
      ~{if defined(area) then ("--area " +  '"' + area + '"') else ""} \
      ~{if defined(lower_bound) then ("--lower-bound " +  '"' + lower_bound + '"') else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (gene_correction) then "--gene-correction" else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if (save_tpm_events) then "--save_tpm_events" else ""} \
      ~{if (combination) then "--combination" else ""} \
      ~{if (median) then "--median" else ""} \
      ~{if defined(tpm_threshold) then ("--tpm-threshold " +  '"' + tpm_threshold + '"') else ""} \
      ~{if defined(nan_threshold) then ("--nan-threshold " +  '"' + nan_threshold + '"') else ""} \
      ~{if defined(name_output_files) then ("--output " +  '"' + name_output_files + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""}
  >>>
  parameter_meta {
    method: "Method to test significance. Required."
    psi: "Path of the PSI files. PSI files and the transcript\\nexpression (TPM) files must have the same order.The\\nconditions files and the tpm files must have the same\\norder."
    tpm: "Path of the transcript expression (TPM) files.\\nConditions files and the transcript expression (TPM)\\nfiles must have the same order.The conditions files\\nand the tpm files must have the same order."
    input_file_eventtranscripts: "Input file with the event-transcripts equivalence\\n(.ioe or .ioi format)"
    area: "Number indicating the number of points in the local\\narea distribution. (default: 1000)"
    lower_bound: "Lower-bound for the absolute delta PSI value to test\\nfor significance. (Default: 0)."
    paired: "Boolean. Indicates if replicates in conditions are\\npaired. (Default: False)."
    gene_correction: "Boolean. If True, SUPPA correct the p-values by gene.\\n(Default: False)."
    alpha: "Family-wise error rate to use for the multiple test\\ncorrection. (Default: 0.05)."
    save_tpm_events: "Boolean. If True, the average log TPM of the events\\nwill be saved in an external file (Default: False)."
    combination: "Boolean. If True, SUPPA perform the analysis between\\nall the possible combinations of conditions (Default:\\nFalse)."
    median: "Boolean. If True, SUPPA use the median to calculate\\nthe Delta PSI. (Default: False)."
    tpm_threshold: "Minimum transcript average TPM value within-replicates\\nand between-conditions to be included in the analysis.\\n(Default: 1.0)."
    nan_threshold: "Percentage allowed of samples per condition with nan\\nvalues for returning a DeltaPSI (Default: 0, no\\nmissing values allowed)."
    name_output_files: "Name of the output files."
    mode: "to choose from DEBUG, INFO, WARNING, ERROR and\\nCRITICAL\\n"
  }
  output {
    File out_stdout = stdout()
  }
}