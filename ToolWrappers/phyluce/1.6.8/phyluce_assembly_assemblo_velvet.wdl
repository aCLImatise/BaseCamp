version 1.0

task PhyluceAssemblyAssembloVelvet {
  input {
    Directory? directory_store_data
    String? km_er
    Int? cores
    String? subfolder
    String? verbosity
    File? log_path
    Boolean? clean
    File? config
    Directory? dir
  }
  command <<<
    phyluce_assembly_assemblo_velvet \
      ~{if defined(directory_store_data) then ("--output " +  '"' + directory_store_data + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(subfolder) then ("--subfolder " +  '"' + subfolder + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_store_data: "The directory in which to store the assembly data"
    km_er: "The kmer value to use"
    cores: "The number of compute cores/threads to run with Velvet"
    subfolder: "A subdirectory, below the level of the group,\\ncontaining the reads"
    verbosity: "The logging level to use"
    log_path: "The path to a directory to hold logs."
    clean: "Cleanup all intermediate Trinity files"
    config: "A configuration file containing reads to assemble"
    dir: "A directory of reads to assemble"
  }
  output {
    File out_stdout = stdout()
  }
}