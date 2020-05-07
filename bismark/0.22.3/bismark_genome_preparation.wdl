version 1.0

task BismarkGenomePreparation {
  input {
    Boolean nucleotideNucleotideCoverage
    String? argumentsArguments
  }
  command <<<
    bismark_genome_preparation \
      ~{argumentsArguments} \
      ~{true="--nucleotide_coverage" false="" nucleotideNucleotideCoverage}
  >>>
}