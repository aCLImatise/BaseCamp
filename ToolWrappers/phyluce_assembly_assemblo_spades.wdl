version 1.0

task PhyluceAssemblyAssembloSpades {
  input {
    Directory? directory_store_data
    Int? cores
    String? subfolder
    String? verbosity
    File? log_path
    Boolean? do_not_clean
    File? config
    Directory? dir
  }
  command <<<
    phyluce_assembly_assemblo_spades \
      ~{if defined(directory_store_data) then ("--output " +  '"' + directory_store_data + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(subfolder) then ("--subfolder " +  '"' + subfolder + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if (do_not_clean) then "--do-not-clean" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""}
  >>>
  parameter_meta {
    directory_store_data: "The directory in which to store the assembly data"
    cores: "The number of compute cores/threads to run with SPAdes"
    subfolder: "A subdirectory, below the level of the group,\\ncontaining the reads"
    verbosity: "The logging level to use"
    log_path: "The path to a directory to hold logs."
    do_not_clean: "Do not cleanup intermediate SPAdes files"
    config: "A configuration file containing reads to assemble"
    dir: "A directory of reads to assemble"
  }
  output {
    File out_stdout = stdout()
  }
}