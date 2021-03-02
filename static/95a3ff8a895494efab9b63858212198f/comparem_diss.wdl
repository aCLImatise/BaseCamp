version 1.0

task ComparemDiss {
  input {
    String? metric
    Boolean? full_matrix
    Boolean? silent
    String profile_file
    String output_file
    String genomes
  }
  command <<<
    comparem diss \
      ~{profile_file} \
      ~{output_file} \
      ~{genomes} \
      ~{if defined(metric) then ("--metric " +  '"' + metric + '"') else ""} \
      ~{if (full_matrix) then "--full_matrix" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    metric: "distance metric to use (default: euclidean)"
    full_matrix: "output full dissimilarity matrix"
    silent: "suppress output"
    profile_file: "file with usage profile for each genome"
    output_file: "output file with pairwise dissimilarity between"
    genomes: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}