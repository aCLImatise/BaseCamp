version 1.0

task ComparemDiss {
  input {
    String? metric
    Boolean? full_matrix
    Boolean? silent
    String profile_file
    String output_file
  }
  command <<<
    comparem diss \
      ~{profile_file} \
      ~{output_file} \
      ~{if defined(metric) then ("--metric " +  '"' + metric + '"') else ""} \
      ~{true="--full_matrix" false="" full_matrix} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    metric: "distance metric to use (default: euclidean)"
    full_matrix: "output full dissimilarity matrix"
    silent: "suppress output"
    profile_file: "file with usage profile for each genome"
    output_file: "output file with pairwise dissimilarity between genomes"
  }
}