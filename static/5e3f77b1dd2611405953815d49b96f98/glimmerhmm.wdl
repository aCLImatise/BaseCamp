version 1.0

task Glimmerhmm {
  input {
    String genome_one_file
    String training_dir_for_genome_one
  }
  command <<<
    glimmerhmm \
      ~{genome_one_file} \
      ~{training_dir_for_genome_one}
  >>>
  parameter_meta {
    genome_one_file: ""
    training_dir_for_genome_one: ""
  }
}