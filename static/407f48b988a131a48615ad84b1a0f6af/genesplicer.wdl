version 1.0

task Genesplicer {
  input {
    String fast_a_file
    String specific_genome_training_directory
  }
  command <<<
    genesplicer \
      ~{fast_a_file} \
      ~{specific_genome_training_directory}
  >>>
  parameter_meta {
    fast_a_file: ""
    specific_genome_training_directory: ""
  }
}