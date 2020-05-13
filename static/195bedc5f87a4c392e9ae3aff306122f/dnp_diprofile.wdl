version 1.0

task DnpDiprofile {
  input {
    Boolean versionVersionCheck
    String dinucleotideDinucleotide
    Int seqSeqLength
    Boolean complementComplement
    Boolean verboseVerbose
  }
  command <<<
    dnp-diprofile \
      ~{if defined(versionVersionCheck) then ("--version-check " +  '"' + versionVersionCheck + '"') else ""} \
      ~{if defined(dinucleotideDinucleotide) then ("--dinucleotide " +  '"' + dinucleotideDinucleotide + '"') else ""} \
      ~{if defined(seqSeqLength) then ("--seqlength " +  '"' + seqSeqLength + '"') else ""} \
      ~{true="--complement" false="" complementComplement} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}