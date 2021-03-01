version 1.0

task IteroAssembleMpi {
  input {
    File? config
    String? subfolder
    Int? iterations
    Int? local_cores
    Boolean? clean
    Boolean? only_single_locus
    Boolean? allow_multiple_contigs
    Boolean? do_not_zip
    File? log_path
    Directory? directory_store_output
    String behavior_dot
  }
  command <<<
    itero assemble mpi \
      ~{behavior_dot} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(subfolder) then ("--subfolder " +  '"' + subfolder + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(local_cores) then ("--local-cores " +  '"' + local_cores + '"') else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if (only_single_locus) then "--only-single-locus" else ""} \
      ~{if (allow_multiple_contigs) then "--allow-multiple-contigs" else ""} \
      ~{if (do_not_zip) then "--do-not-zip" else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(directory_store_output) then ("--output " +  '"' + directory_store_output + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "A configuration file containing reads to assemble"
    subfolder: "A subdirectory, below the level of the group,\\ncontaining the reads"
    iterations: "The number of iterations to run for each locus"
    local_cores: "The number of cores to use on the main node"
    clean: "Cleanup all intermediate files"
    only_single_locus: "Assemble only to a single contig"
    allow_multiple_contigs: "Allow assembly stages to produce multiple contigs"
    do_not_zip: "Do not zip the iteration files, which is the default"
    log_path: "The path to a directory to hold logs."
    directory_store_output: "The directory in which to store the output"
    behavior_dot: "--verbosity {INFO,WARN,CRITICAL}"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_store_output = "${in_directory_store_output}"
  }
}