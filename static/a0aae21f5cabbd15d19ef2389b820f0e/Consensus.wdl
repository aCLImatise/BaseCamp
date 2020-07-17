version 1.0

task Consensus {
  input {
    String? out
    String? pile_up
    Boolean? nt
    Boolean? cs
    Boolean? variants
    Boolean? verbose
    String contig
  }
  command <<<
    Consensus \
      ~{contig} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(pile_up) then ("--pileup " +  '"' + pile_up + '"') else ""} \
      ~{true="--nt" false="" nt} \
      ~{true="--cs" false="" cs} \
      ~{true="--variants" false="" variants} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    out: "write the output FASTA file to OUTPUT"
    pile_up: "write the pileup to PILEUP"
    nt: "output nucleotide contigs [default]"
    cs: "output colour-space contigs"
    variants: "print only variants in the pileup"
    verbose: "display verbose output"
    contig: "contigs in FASTA format"
  }
}