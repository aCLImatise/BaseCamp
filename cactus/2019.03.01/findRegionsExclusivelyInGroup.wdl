version 1.0

task FindRegionsExclusivelyInGroup {
  input {
    String hal_file
    String reference_genome
    String in_group_genomes
  }
  command <<<
    findRegionsExclusivelyInGroup \
      ~{hal_file} \
      ~{reference_genome} \
      ~{in_group_genomes}
  >>>
  parameter_meta {
    hal_file: ""
    reference_genome: ""
    in_group_genomes: ""
  }
}