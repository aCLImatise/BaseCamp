version 1.0

task HalSnps {
  input {
    String hal_file
    String ref_genome
    String target_genomes
  }
  command <<<
    halSnps \
      ~{hal_file} \
      ~{ref_genome} \
      ~{target_genomes}
  >>>
  parameter_meta {
    hal_file: ""
    ref_genome: ""
    target_genomes: ""
  }
}