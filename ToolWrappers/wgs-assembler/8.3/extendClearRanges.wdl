version 1.0

task ExtendClearRanges {
  input {
    String? use_ckpname_checkpoint
    Int? the_checkpoint_use
    String? the_gatekeeper_store
    Int? start_specific_gap
    String? begin_specific_scaffold
    String? end_specific_scaffold
    String? process_only_scaffold
    String? skip_this_scaffold
    String? process_only_gap
    String? _skip_gap
    Int? the_iteration_ecr
    Boolean? load
    Boolean? enable_verbosemultialign_debugging
    String? opts
  }
  command <<<
    extendClearRanges \
      ~{opts} \
      ~{if defined(use_ckpname_checkpoint) then ("-c " +  '"' + use_ckpname_checkpoint + '"') else ""} \
      ~{if defined(the_checkpoint_use) then ("-n " +  '"' + the_checkpoint_use + '"') else ""} \
      ~{if defined(the_gatekeeper_store) then ("-g " +  '"' + the_gatekeeper_store + '"') else ""} \
      ~{if defined(start_specific_gap) then ("-C " +  '"' + start_specific_gap + '"') else ""} \
      ~{if defined(begin_specific_scaffold) then ("-b " +  '"' + begin_specific_scaffold + '"') else ""} \
      ~{if defined(end_specific_scaffold) then ("-e " +  '"' + end_specific_scaffold + '"') else ""} \
      ~{if defined(process_only_scaffold) then ("-o " +  '"' + process_only_scaffold + '"') else ""} \
      ~{if defined(skip_this_scaffold) then ("-s " +  '"' + skip_this_scaffold + '"') else ""} \
      ~{if defined(process_only_gap) then ("-O " +  '"' + process_only_gap + '"') else ""} \
      ~{if defined(_skip_gap) then ("-S " +  '"' + _skip_gap + '"') else ""} \
      ~{if defined(the_iteration_ecr) then ("-i " +  '"' + the_iteration_ecr + '"') else ""} \
      ~{if (load) then "-load" else ""} \
      ~{if (enable_verbosemultialign_debugging) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_ckpname_checkpoint: "Use ckpName as the checkpoint name"
    the_checkpoint_use: "The checkpoint to use"
    the_gatekeeper_store: "The gatekeeper store"
    start_specific_gap: "#        Start at a specific gap number"
    begin_specific_scaffold: "Begin at a specific scaffold"
    end_specific_scaffold: "End after a specific scaffold (INCLUSIVE)"
    process_only_scaffold: "Process only this scaffold"
    skip_this_scaffold: "Skip this scaffold"
    process_only_gap: "#        Process only this gap"
    _skip_gap: "#        Skip this gap"
    the_iteration_ecr: "The iteration of ECR; either 1 or 2"
    load: "Load gkpStore into memory"
    enable_verbosemultialign_debugging: "Enable VERBOSE_MULTIALIGN for debugging"
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}