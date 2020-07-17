version 1.0

task AptProbesetSummarize {
  input {
    String? cel
    String? log_file
    File? qc_probe_sets
    String? chip_type
    String? precision
    String? explain
    String? kill_list
    String? time_start
    String? time_end
    String? time_run_minutes
    String? analysis_guid
    String? a
    String rma_bg
    String quant_norm
    String artifact_reduction
    String med_norm
    String adapter_type_norm
    String gc_bg
    String gc_correction
    String scale_intensities
    Int intensity_reporter
    String no_trans
    String pm_only
    String pm_mm
    String pm_gc_bg
    String pm_sum
    String plier
    String sea
    String iter_plier
    String med_polish
    String dab_g
    String avg_diff
    String median
    String expr
    String pc_a_select
    String spect_select
  }
  command <<<
    apt-probeset-summarize \
      ~{rma_bg} \
      ~{quant_norm} \
      ~{artifact_reduction} \
      ~{med_norm} \
      ~{adapter_type_norm} \
      ~{gc_bg} \
      ~{gc_correction} \
      ~{scale_intensities} \
      ~{intensity_reporter} \
      ~{no_trans} \
      ~{pm_only} \
      ~{pm_mm} \
      ~{pm_gc_bg} \
      ~{pm_sum} \
      ~{plier} \
      ~{sea} \
      ~{iter_plier} \
      ~{med_polish} \
      ~{dab_g} \
      ~{avg_diff} \
      ~{median} \
      ~{expr} \
      ~{pc_a_select} \
      ~{spect_select} \
      ~{if defined(cel) then ("-p " +  '"' + cel + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(qc_probe_sets) then ("--qc-probesets " +  '"' + qc_probe_sets + '"') else ""} \
      ~{if defined(chip_type) then ("--chip-type " +  '"' + chip_type + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(explain) then ("--explain " +  '"' + explain + '"') else ""} \
      ~{if defined(kill_list) then ("--kill-list " +  '"' + kill_list + '"') else ""} \
      ~{if defined(time_start) then ("--time-start " +  '"' + time_start + '"') else ""} \
      ~{if defined(time_end) then ("--time-end " +  '"' + time_end + '"') else ""} \
      ~{if defined(time_run_minutes) then ("--time-run-minutes " +  '"' + time_run_minutes + '"') else ""} \
      ~{if defined(analysis_guid) then ("--analysis-guid " +  '"' + analysis_guid + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  parameter_meta {
    cel: "*.cel"
    log_file: "name of the log file. Generally  defaults to the program name in the out-dir folder. [default ''] "
    qc_probe_sets: "with probeset_id(name) and group_name columns specifying subsets of probesets to compute qc stats for. [default ''] "
    chip_type: "types to check library and CEL files against. Can be specified multiple times. The first one is propigated as the chip  type in the output files. Warning, use of this option will override the usual check between chip types found in the library files and cel files. You should use this option instead of --force when possible. [default ''] "
    precision: "many digits of precision to use after decimal. [default '5'] "
    explain: "a particular operation (i.e. --explain rma-bg). [default ''] "
    kill_list: "not use the PM probes specified in file for computing results. [experimental] [default ''] "
    time_start: "time the engine run was started  [default ''] "
    time_end: "time the engine run ended [default ''] "
    time_run_minutes: "run time in minutes. [default ''] "
    analysis_guid: "GUID for the analysis run. [default ''] "
    a: ""
    rma_bg: "Performs an RMA style background adjustment  as described in Irizarry et al 2003. "
    quant_norm: "Class for doing quantile normalization. Can  do sketch and full quantile (just set sketch to chip size or zero) and supports bioconductor compatibility. "
    artifact_reduction: "Class for artifact reduction. "
    med_norm: "Class for doing median normalization. Adjust intensities such that all chips have the same median (or average). "
    adapter_type_norm: "Class for doing adapter type normalization. Adjust intensities by adapter type. "
    gc_bg: "Subtract bacground based on median intensity of probes with similar GC content. "
    gc_correction: "Correct feature intensity for variations in gc_count. "
    scale_intensities: "Scale cel intensities. "
    intensity_reporter: "Class for dumping intensity values to a file. "
    no_trans: "Placeholder chipstream that does no transformation "
    pm_only: "No adjustment. Just uses unmodified PM intensity values. "
    pm_mm: "Use mismatch probe as adjustment for perfect match. Has strength of being unbiased, but often the mismatch probe binds the match target. "
    pm_gc_bg: "Do an adjustment based on the median intensity of probes with similar GC content. "
    pm_sum: "Add itensity of PM probe for other allele to PM probes. "
    plier: "The PLIER (Probe Logarithmic Error Intensity  Estimate) method produces an improved signal by accounting for experimentally observed patterns in feature behavior and handling error at the appropriately at low and high signal values. This version of PLIER differs from the previous version by the addition of a SafteyZero, NumericalTolerance, and FixPrecomputed. These options are intended to improve the stability of PLIER results when using precomputed feature reponse values. To get the older PLIER behavior set SafetyZero to 0.0, NumericalTolerance to 0.0, and FixPrecomputed to false. "
    sea: "The SEA (Simplified Expression Analysis) method provides a simple signal estimate, using the initialization algorithm from the PLIER (Probe Logarithmic Error Intensity Estimate) method and omitting the PLIER parameter fitting. SEA is useful for single chip signal estimation. The version of PLIER used by SEA differs from the previous version  by the addition of a SafteyZero, NumericalTolerance, and FixPrecomputed. These options are intended to improve the stability of PLIER results when using precomputed feature reponse values. To get the older PLIER behavior set SafetyZero to 0.0, NumericalTolerance to 0.0, and FixPrecomputed to false. "
    iter_plier: "Do probe set quantification estimate by iteratively calling PLIER with the probes that best correlate  with signal estimate. The version of PLIER used by IterPLIER differs from the previous version by the addition of a SafteyZero, NumericalTolerance, and FixPrecomputed. These options are intended to improve the stability of PLIER results when using precomputed feature reponse values. To get the older PLIER behavior set SafetyZero to 0.0, NumericalTolerance to 0.0, and FixPrecomputed to false. "
    med_polish: "Performs a median polish to estimate target and probe effects. Resulting summaries are in log2 space by default. Used in summary step of RMA as described in Irizarry et al 2003. "
    dab_g: "Calculates the p-value that the intensities in a probeset could have been observed by chance in a background distribution. Used as a substitute for standard absent/present calls when mismatch probes  are not available. "
    avg_diff: "Calculates the average measurement for a probeset using the MAS 4 average difference algorithm, namely the average difference between the pm and mm probe signal. "
    median: "Use the median of probes for a particular chip as the summary. "
    expr: "Does expression summarization on probesets. "
    pc_a_select: "Determines PCA for probes and picks probes that are near the principal component as the probes to use for downstream analysis. "
    spect_select: "Picks probes that are similar to each other based  on spectral cluster and normalized cut. "
  }
}