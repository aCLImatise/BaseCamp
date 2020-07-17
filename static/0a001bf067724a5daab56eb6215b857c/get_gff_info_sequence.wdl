version 1.0

task GetGffInfoSequence {
  input {
    Boolean? reverse
    Boolean? no_wrap
    Boolean? split
    File? reference
    Boolean? progress
    String? gff_file
    String? fast_a_file
  }
  command <<<
    get-gff-info sequence \
      ~{gff_file} \
      ~{fast_a_file} \
      ~{true="--reverse" false="" reverse} \
      ~{true="--no-wrap" false="" no_wrap} \
      ~{true="--split" false="" split} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--progress" false="" progress}
  >>>
  parameter_meta {
    reverse: "Reverse complement sequences on the - strand"
    no_wrap: "Write the sequences on one line"
    split: "Split the sequence header of the reference at the first space, to emulate BLAST behaviour"
    reference: "Fasta file containing the reference sequences of the GFF file"
    progress: "Shows Progress Bar"
    gff_file: ""
    fast_a_file: ""
  }
}