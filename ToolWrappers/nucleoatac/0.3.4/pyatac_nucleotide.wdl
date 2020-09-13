version 1.0

task PyatacNucleotide {
  input {
    File? fast_a
    File? bed
    Boolean? dinucleotide
    Int? down
    Int? strand
    String? out
    Int? cores
    Boolean? norm
    String nucleotide
  }
  command <<<
    pyatac nucleotide \
      ~{nucleotide} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if (dinucleotide) then "--dinucleotide" else ""} \
      ~{if defined(down) then ("--down " +  '"' + down + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (norm) then "--norm" else ""}
  >>>
  parameter_meta {
    fast_a: "Accepts fasta file"
    bed: "Positions around which to get nucleotide frequencies"
    dinucleotide: "Compute dinucleotide frequencies instead of single"
    down: "Bases downstream of site to get frequencies for"
    strand: "Column in bedfile with strand info (1-based)"
    out: "Basename for output"
    cores: "number of cores to use"
    norm: "Normalize by background frequencies"
    nucleotide: "--up int              Bases upstream of site to get frequencies for"
  }
  output {
    File out_stdout = stdout()
  }
}