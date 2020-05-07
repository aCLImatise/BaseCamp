version 1.0

task FastqFilterpair {
  input {
    String? filterFilterPair
    String? fastq1Fastq1
    String? fastq2Fastq2
    String? pairedPaired1
    String? pairedPaired2
    String? unpairedUnpaired
    String? sortedSorted
  }
  command <<<
    fastq_filterpair \
      ~{filterFilterPair} \
      ~{fastq1Fastq1} \
      ~{fastq2Fastq2} \
      ~{pairedPaired1} \
      ~{pairedPaired2} \
      ~{unpairedUnpaired} \
      ~{sortedSorted}
  >>>
}