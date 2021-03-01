version 1.0

task HicDifferentialTAD {
  input {
    String? target_matrix
    String? control_matrix
    File? tad_domains
    File? out_filename_prefix
    Int? p_value
    String? mode
    String? mode_reject
    Int? threads
  }
  command <<<
    hicDifferentialTAD \
      ~{if defined(target_matrix) then ("--targetMatrix " +  '"' + target_matrix + '"') else ""} \
      ~{if defined(control_matrix) then ("--controlMatrix " +  '"' + control_matrix + '"') else ""} \
      ~{if defined(tad_domains) then ("--tadDomains " +  '"' + tad_domains + '"') else ""} \
      ~{if defined(out_filename_prefix) then ("--outFileNamePrefix " +  '"' + out_filename_prefix + '"') else ""} \
      ~{if defined(p_value) then ("--pValue " +  '"' + p_value + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(mode_reject) then ("--modeReject " +  '"' + mode_reject + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    target_matrix: "The matrix which was used to compute the TADs"
    control_matrix: "The control matrix to test the TADs for a differential\\ninteraction pattern."
    tad_domains: "The TADs domain file computed by hicFindTADs."
    out_filename_prefix: "Outfile name prefix to store the accepted / rejected\\nH0 TADs."
    p_value: "H0 is considered as 'two regions are identical.' i.e.\\nall regions with a test result of <= p-value are\\nrejected and considered as differential."
    mode: "Consider only intra-TAD interactions, or additional\\nleft inter-TAD, right inter-TAD or all."
    mode_reject: "All test of a mode must be rejected (all) or reject\\nregion (and accept it is differential) as soon as at\\nleast one region is having a p-value <= --pValue."
    threads: "Number of threads to use, the parallelization is\\nimplemented per chromosome."
  }
  output {
    File out_stdout = stdout()
    File out_out_filename_prefix = "${in_out_filename_prefix}"
  }
}