version 1.0

task PhyluceSnpPhaseUces {
  input {
    File? config
    Directory? bams
    Directory? directory_store_files
    Boolean? conservative
    Int? cores
    String? verbosity
    File? log_path
  }
  command <<<
    phyluce_snp_phase_uces \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(bams) then ("--bams " +  '"' + bams + '"') else ""} \
      ~{if defined(directory_store_files) then ("--output " +  '"' + directory_store_files + '"') else ""} \
      ~{if (conservative) then "--conservative" else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "A configuration file containing the reference-to-read\\nsample mapping and some metadata"
    bams: "The directory containing sample-specific BAM files"
    directory_store_files: "The directory in which to store the SNPs files"
    conservative: "Use this flag if you want to discard all base calls\\nwith limited certainty (covered by <3 reads). This\\nwill produce the ambiguity character \\\"N\\\" instead of\\nthat potential base call in the final sequence."
    cores: "For parallel processing you can choose the number of\\ncores you want CLC to run on."
    verbosity: "The logging level to use"
    log_path: "The path to a directory to hold logs."
  }
  output {
    File out_stdout = stdout()
  }
}