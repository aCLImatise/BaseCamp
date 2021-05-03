version 1.0

task Consensus {
  input {
    File? out
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
      ~{if (nt) then "--nt" else ""} \
      ~{if (cs) then "--cs" else ""} \
      ~{if (variants) then "--variants" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.1--hd403d74_0"
  }
  parameter_meta {
    out: "write the output FASTA file to OUTPUT"
    pile_up: "write the pileup to PILEUP"
    nt: "output nucleotide contigs [default]"
    cs: "output colour-space contigs"
    variants: "print only variants in the pileup"
    verbose: "display verbose output"
    contig: "contigs in FASTA format"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}