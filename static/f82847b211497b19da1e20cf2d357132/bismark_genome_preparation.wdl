version 1.0

task BismarkGenomePreparation {
  input {
    String arguments
  }
  command <<<
    bismark_genome_preparation \
      ~{arguments}
  >>>
  parameter_meta {
    arguments: ""
  }
}