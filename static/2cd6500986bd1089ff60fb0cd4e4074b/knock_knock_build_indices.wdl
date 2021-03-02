version 1.0

task KnockknockBuildindices {
  input {
    Int? num_threads
    String project_directory
    String genome_name
  }
  command <<<
    knock_knock build_indices \
      ~{project_directory} \
      ~{genome_name} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    num_threads: "number of threads to use for index building\\n"
    project_directory: "the base directory to store input data, reference\\nannotations, and analysis output for a project"
    genome_name: "name of genome to download"
  }
  output {
    File out_stdout = stdout()
  }
}