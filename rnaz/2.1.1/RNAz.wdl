version 1.0

task RNAz {
  input {
    Boolean forwardForward
    Boolean reverseReverse
    Boolean bothBothStrands
    File outfileOutfile
    Float cutCutOff
    Boolean dinucleotideDinucleotide
    Boolean mononucleotideMononucleotide
    Boolean loLoCarNate
    Boolean noNoShuffle
  }
  command <<<
    RNAz \
      ~{true="--forward" false="" forwardForward} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--both-strands" false="" bothBothStrands} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{true="--dinucleotide" false="" dinucleotideDinucleotide} \
      ~{true="--mononucleotide" false="" mononucleotideMononucleotide} \
      ~{true="--locarnate" false="" loLoCarNate} \
      ~{true="--no-shuffle" false="" noNoShuffle}
  >>>
}