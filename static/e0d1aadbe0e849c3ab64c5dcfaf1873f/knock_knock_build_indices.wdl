version 1.0

task KnockKnockBuildIndices {
  input {
    String? num_threads
    String project_directory
    String genome_name
  }
  command <<<
    knock-knock build-indices \
      ~{project_directory} \
      ~{genome_name} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""}
  >>>
  parameter_meta {
    num_threads: "number of threads to use for index building"
    project_directory: "the base directory to store input data, reference annotations, and analysis output for a project"
    genome_name: "name of genome to download"
  }
}