version 1.0

task BismarkDefault {
  input {
    String bismark
    String genome_folder
  }
  command <<<
    bismark default \
      ~{bismark} \
      ~{genome_folder}
  >>>
  parameter_meta {
    bismark: ""
    genome_folder: ""
  }
}