version 1.0

task PyatacNucleotide {
  input {
    String fastFastA
    String bedBed
    Boolean dinucleotideDinucleotide
    Int upUp
    Int downDown
    Int strandStrand
    String outOut
    Int coresCores
    Boolean normNorm
  }
  command <<<
    pyatac nucleotide \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{true="--dinucleotide" false="" dinucleotideDinucleotide} \
      ~{if defined(upUp) then ("--up " +  '"' + upUp + '"') else ""} \
      ~{if defined(downDown) then ("--down " +  '"' + downDown + '"') else ""} \
      ~{if defined(strandStrand) then ("--strand " +  '"' + strandStrand + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{true="--norm" false="" normNorm}
  >>>
}