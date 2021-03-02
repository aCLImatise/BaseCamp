version 1.0

task PhyluceAssemblyAssembloTrinity {
  input {
    Directory? directory_store_data
    Int? cores
    String? verbosity
    File? log_path
    Boolean? clean
    Int? min_km_er_coverage
    File? config
    Directory? dir
    String trinity
  }
  command <<<
    phyluce_assembly_assemblo_trinity \
      ~{trinity} \
      ~{if defined(directory_store_data) then ("--output " +  '"' + directory_store_data + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if defined(min_km_er_coverage) then ("--min-kmer-coverage " +  '"' + min_km_er_coverage + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_store_data: "The directory in which to store the assembly data"
    cores: "The number of compute cores/threads to run with"
    verbosity: "The logging level to use"
    log_path: "The path to a directory to hold logs."
    clean: "Cleanup all intermediate Trinity files"
    min_km_er_coverage: "The min_kmer_coverage for trinity"
    config: "A configuration file containing reads to assemble"
    dir: "A directory of reads to assemble"
    trinity: "--subfolder SUBFOLDER"
  }
  output {
    File out_stdout = stdout()
  }
}