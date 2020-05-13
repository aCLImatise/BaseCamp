version 1.0

task Gtf2gff.pl {
  input {
    Boolean printPrintExon
    Boolean printPrintUtr
    Boolean printPrintIntron
    Boolean gff3Gff3
    Boolean includeIncludeStopInCds
    String? outOut
  }
  command <<<
    gtf2gff.pl \
      ~{outOut} \
      ~{true="--printExon" false="" printPrintExon} \
      ~{true="--printUTR" false="" printPrintUtr} \
      ~{true="--printIntron" false="" printPrintIntron} \
      ~{true="--gff3" false="" gff3Gff3} \
      ~{true="--includeStopInCDS" false="" includeIncludeStopInCds}
  >>>
}