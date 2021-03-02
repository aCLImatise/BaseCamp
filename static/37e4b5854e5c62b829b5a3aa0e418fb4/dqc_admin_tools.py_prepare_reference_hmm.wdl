version 1.0

task DqcAdminToolspyPrepareReferenceHmm {
  input {
    Boolean? debug
    File? ref_dir
    Int? num_threads
  }
  command <<<
    dqc_admin_tools_py prepare_reference_hmm \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(ref_dir) then ("--ref_dir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dfast_qc:0.2.6--0"
  }
  parameter_meta {
    debug: "Debug mode"
    ref_dir: "DQC reference directory (default: DQC_REFERENCE_DIR)"
    num_threads: "Number of threads for parallel processing (default:1)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}