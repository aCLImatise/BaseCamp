version 1.0

task DqcAdminToolspyPrepareReferenceFasta {
  input {
    Boolean? debug
    File? ref_dir
    Int? num_threads
    Boolean? delete_existing_marker
  }
  command <<<
    dqc_admin_tools_py prepare_reference_fasta \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(ref_dir) then ("--ref_dir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if (delete_existing_marker) then "--delete_existing_marker" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dfast_qc:0.2.7--hdfd78af_0"
  }
  parameter_meta {
    debug: "Debug mode"
    ref_dir: "DQC reference directory (default: DQC_REFERENCE_DIR)"
    num_threads: "Number of threads for parallel processing (default:1)"
    delete_existing_marker: "Delete existing markers and recreate all markers.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}