version 1.0

task DqcAdminToolspyPrepareCheckm {
  input {
    Boolean? debug
    File? ref_dir
    Int? num_threads
    Boolean? delete_existing_data
  }
  command <<<
    dqc_admin_tools_py prepare_checkm \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(ref_dir) then ("--ref_dir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if (delete_existing_data) then "--delete_existing_data" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dfast_qc:0.2.7--hdfd78af_0"
  }
  parameter_meta {
    debug: "Debug mode"
    ref_dir: "DQC reference directory (default: DQC_REFERENCE_DIR)"
    num_threads: "Number of threads for parallel processing (default:1)"
    delete_existing_data: "Delete existing data directory.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}