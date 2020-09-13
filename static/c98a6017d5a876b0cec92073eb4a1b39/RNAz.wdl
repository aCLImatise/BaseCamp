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
      ~{if (forward) then "--forward" else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (both_strands) then "--both-strands" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if (dinucleotide) then "--dinucleotide" else ""} \
      ~{if (mononucleotide) then "--mononucleotide" else ""} \
      ~{if (lo_car_nate) then "--locarnate" else ""} \
      ~{if (no_shuffle) then "--no-shuffle" else ""}
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
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}