version 1.0

task PhyluceSnpBwaAlign {
  input {
    String? config
    String? directory_store_files
    String? subfolder
    String? cores
    String? verbosity
    String? log_path
    Boolean? no_remove_duplicates
    Boolean? mem
  }
  command <<<
    phyluce_snp_bwa_align \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(directory_store_files) then ("--output " +  '"' + directory_store_files + '"') else ""} \
      ~{if defined(subfolder) then ("--subfolder " +  '"' + subfolder + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{true="--no-remove-duplicates" false="" no_remove_duplicates} \
      ~{true="--mem" false="" mem}
  >>>
  parameter_meta {
    config: "A configuration file containing"
    directory_store_files: "The directory in which to store the SNPs files"
    subfolder: "A subdirectory, below the level of the group, containing the reads"
    cores: "The number of compute cores/threads to use"
    verbosity: "The logging level to use"
    log_path: "The path to a directory to hold logs."
    no_remove_duplicates: "Do not remove duplicate reads."
    mem: "Use bwa mem."
  }
}