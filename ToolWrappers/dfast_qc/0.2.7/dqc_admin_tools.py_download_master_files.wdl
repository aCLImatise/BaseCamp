version 1.0

task DqcAdminToolspyDownloadMasterFiles {
  input {
    Boolean? debug
    File? ref_dir
    Int? num_threads
    Boolean? targets
  }
  command <<<
    dqc_admin_tools_py download_master_files \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(ref_dir) then ("--ref_dir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if (targets) then "--targets" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dfast_qc:0.2.7--hdfd78af_0"
  }
  parameter_meta {
    debug: "Debug mode"
    ref_dir: "DQC reference directory (default: DQC_REFERENCE_DIR)"
    num_threads: "Number of threads for parallel processing (default:1)"
    targets: "[STR [STR ...]]\\nTarget(s) for downloading. [asm: Assembly report, ani:\\nANI report, tsr: Type strain report, hmm: TIGR HMMER\\nprofile, checkm: CheckM reference data, taxdump: NCBI\\ntaxdump.tar.gz] (default: asm ani tsr)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}