version 1.0

task CompareOutToGff.prl {
  input {
    Boolean? gff
    Boolean? fasta_formatted_file
    Boolean? threshold
    Boolean? over
    Boolean? instances
  }
  command <<<
    compare-out-to-gff.prl \
      ~{true="--gff" false="" gff} \
      ~{true="--f" false="" fasta_formatted_file} \
      ~{true="--threshold" false="" threshold} \
      ~{true="--over" false="" over} \
      ~{true="--instances" false="" instances}
  >>>
  parameter_meta {
    gff: "A GFF-formatted file of features. More than one file may be specified with multiple --gff options."
    fasta_formatted_file: "A fasta formatted file. If this is given, then sequences that are under (over) the overlap threshold will be in the output. This is a sequence filter."
    threshold: "The maximum (minimum) amount of overlap tolerated by any one type of repeat."
    over: "Determines if the threshold is a minimum or a maximum (defaults to maximum; including --over makes it a minimum)"
    instances: "Determines how the overlap calculation is done. If this is not specified, the overlap is calculated by bases: if 40 bases of a repeat element overlaps a feature in one of the GFF files, it is counted as 40 bases. The sum is taken over all features and all repeats of a given type and divided by the total length of the repeat. If --instances is specified, the \"overlap\" is considered to be the number of instances of a given type that overlap any feature, divided by the total number of instances of that type."
  }
}