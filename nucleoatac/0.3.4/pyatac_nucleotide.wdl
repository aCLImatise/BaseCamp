version 1.0

task PyatacNucleotide {
  input {
    String? fast_a
    String? bed
    Boolean? dinucleotide
    Int? up
    Int? down
    Int? strand
    String? out
    Int? cores
    Boolean? norm
  }
  command <<<
    pyatac nucleotide \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{true="--dinucleotide" false="" dinucleotide} \
      ~{if defined(up) then ("--up " +  '"' + up + '"') else ""} \
      ~{if defined(down) then ("--down " +  '"' + down + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{true="--norm" false="" norm}
  >>>
  parameter_meta {
    fast_a: "Accepts fasta file"
    bed: "Positions around which to get nucleotide frequencies"
    dinucleotide: "Compute dinucleotide frequencies instead of single nucleotide"
    up: "Bases upstream of site to get frequencies for"
    down: "Bases downstream of site to get frequencies for"
    strand: "Column in bedfile with strand info (1-based)"
    out: "Basename for output"
    cores: "number of cores to use"
    norm: "Normalize by background frequencies"
  }
}