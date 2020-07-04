version 1.0

task RNAz {
  input {
    Boolean? forward
    Boolean? reverse
    Boolean? both_strands
    File? outfile
    Float? cut_off
    Boolean? dinucleotide
    Boolean? mononucleotide
    Boolean? lo_car_nate
    Boolean? no_shuffle
  }
  command <<<
    RNAz \
      ~{true="--forward" false="" forward} \
      ~{true="--reverse" false="" reverse} \
      ~{true="--both-strands" false="" both_strands} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{true="--dinucleotide" false="" dinucleotide} \
      ~{true="--mononucleotide" false="" mononucleotide} \
      ~{true="--locarnate" false="" lo_car_nate} \
      ~{true="--no-shuffle" false="" no_shuffle}
  >>>
  parameter_meta {
    forward: "Score forward strand"
    reverse: "Score reverse strand"
    both_strands: "Score both strands"
    outfile: "Output filename"
    cut_off: "Probability cutoff"
    dinucleotide: "Use dinucleotide shuffled z-scores (default)"
    mononucleotide: "Use mononucleotide shuffled z-scores"
    lo_car_nate: "Use decision model for structural alignments (default=off)"
    no_shuffle: "Never fall back to shuffling (default=off)"
  }
}