version 1.0

task PhyluceSnpPhaseUces {
  input {
    String? config
    String? bams
    String? directory_store_files
    Boolean? conservative
    String? cores
    String? verbosity
    String? log_path
  }
  command <<<
    phyluce_snp_phase_uces \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(bams) then ("--bams " +  '"' + bams + '"') else ""} \
      ~{if defined(directory_store_files) then ("--output " +  '"' + directory_store_files + '"') else ""} \
      ~{true="--conservative" false="" conservative} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    config: "A configuration file containing the reference-to-read sample mapping and some metadata"
    bams: "The directory containing sample-specific BAM files"
    directory_store_files: "The directory in which to store the SNPs files"
    conservative: "Use this flag if you want to discard all base calls with limited certainty (covered by <3 reads). This will produce the ambiguity character \"N\" instead of that potential base call in the final sequence."
    cores: "For parallel processing you can choose the number of cores you want CLC to run on."
    verbosity: "The logging level to use"
    log_path: "The path to a directory to hold logs."
  }
}