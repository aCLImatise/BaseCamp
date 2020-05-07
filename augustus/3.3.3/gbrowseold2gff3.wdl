version 1.0

task Gbrowseold2gff3.pl {
  input {
    String? hintsHints
    String? sourceSource
    String? chromosomeChromosome1
    String? chromosomeChromosome1
    String? chromosomeChromosome1
    String? chromosomeChromosome1
    String? chromosomeChromosome1
    String? chromosomeChromosome1
    String? chromosomeChromosome1
    String? chromosomeChromosome1
    String? chromosomeChromosome1
  }
  command <<<
    gbrowseold2gff3.pl \
      ~{hintsHints} \
      ~{chromosomeChromosome1} \
      ~{sourceSource} \
      ~{chromosomeChromosome1} \
      ~{chromosomeChromosome1} \
      ~{chromosomeChromosome1} \
      ~{chromosomeChromosome1} \
      ~{chromosomeChromosome1} \
      ~{chromosomeChromosome1} \
      ~{chromosomeChromosome1} \
      ~{chromosomeChromosome1}
  >>>
}