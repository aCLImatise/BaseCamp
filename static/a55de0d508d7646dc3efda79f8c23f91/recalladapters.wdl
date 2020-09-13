version 1.0

task Recalladapters {
  input {
    String? prefix_output_filenames
    String? sub_read_set
    Int? nprocs
    Int? number_threads_parallel_bam
    Boolean? inline_pbi
    Boolean? silent
    Boolean? disable_adapter_finding
    String? adapters
    Boolean? global_aln_flanking
    Int? flank_length
    Float? min_soft_accuracy
    Float? min_hard_accuracy
    Float? min_flanking_score
    Boolean? disable_adapter_correction
    Boolean? adp_qc
    Int? min_adapter_score
    Int? min_sub_length
    Float? mins_nr
    String? whitelist_z_mw_num
  }
  command <<<
    recalladapters \
      ~{if defined(prefix_output_filenames) then ("-o " +  '"' + prefix_output_filenames + '"') else ""} \
      ~{if defined(sub_read_set) then ("--subreadset " +  '"' + sub_read_set + '"') else ""} \
      ~{if defined(nprocs) then ("--nProcs " +  '"' + nprocs + '"') else ""} \
      ~{if defined(number_threads_parallel_bam) then ("-b " +  '"' + number_threads_parallel_bam + '"') else ""} \
      ~{if (inline_pbi) then "--inlinePbi" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (disable_adapter_finding) then "--disableAdapterFinding" else ""} \
      ~{if defined(adapters) then ("--adapters " +  '"' + adapters + '"') else ""} \
      ~{if (global_aln_flanking) then "--globalAlnFlanking" else ""} \
      ~{if defined(flank_length) then ("--flankLength " +  '"' + flank_length + '"') else ""} \
      ~{if defined(min_soft_accuracy) then ("--minSoftAccuracy " +  '"' + min_soft_accuracy + '"') else ""} \
      ~{if defined(min_hard_accuracy) then ("--minHardAccuracy " +  '"' + min_hard_accuracy + '"') else ""} \
      ~{if defined(min_flanking_score) then ("--minFlankingScore " +  '"' + min_flanking_score + '"') else ""} \
      ~{if (disable_adapter_correction) then "--disableAdapterCorrection" else ""} \
      ~{if (adp_qc) then "--adpqc" else ""} \
      ~{if defined(min_adapter_score) then ("--minAdapterScore " +  '"' + min_adapter_score + '"') else ""} \
      ~{if defined(min_sub_length) then ("--minSubLength " +  '"' + min_sub_length + '"') else ""} \
      ~{if defined(mins_nr) then ("--minSnr " +  '"' + mins_nr + '"') else ""} \
      ~{if defined(whitelist_z_mw_num) then ("--whitelistZmwNum " +  '"' + whitelist_z_mw_num + '"') else ""}
  >>>
  parameter_meta {
    prefix_output_filenames: "Prefix of output filenames"
    sub_read_set: "Input subreadset.xml"
    nprocs: "Number of threads for parallel ZMW processing"
    number_threads_parallel_bam: "Number of threads for parallel BAM compression, can only\\nbe set when not generating pbindex inline with --inlinePbi"
    inline_pbi: "Generate pbindex inline with BAM writing"
    silent: "No progress output."
    disable_adapter_finding: ""
    adapters: ""
    global_aln_flanking: ""
    flank_length: ""
    min_soft_accuracy: ""
    min_hard_accuracy: ""
    min_flanking_score: ""
    disable_adapter_correction: ""
    adp_qc: ""
    min_adapter_score: "Minimal score for an adapter"
    min_sub_length: "Minimal subread length. Default: 50"
    mins_nr: "Minimal SNR across channels. Default: 3.75"
    whitelist_z_mw_num: "Only process given ZMW NUMBERs"
  }
  output {
    File out_stdout = stdout()
  }
}