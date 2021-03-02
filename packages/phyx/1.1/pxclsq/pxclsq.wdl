version 1.0

task Pxclsq {
  input {
    File? seq_f
    File? out_f
    Float? prop
    Boolean? tax_a
    Boolean? codon
    Boolean? info
    Boolean? verbose
    Boolean? citation
  }
  command <<<
    pxclsq \
      ~{if defined(seq_f) then ("--seqf " +  '"' + seq_f + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if defined(prop) then ("--prop " +  '"' + prop + '"') else ""} \
      ~{if (tax_a) then "--taxa" else ""} \
      ~{if (codon) then "--codon" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    seq_f: "input sequence file, STDIN otherwise"
    out_f: "output fasta file, STOUT otherwise"
    prop: "proportion required to be present, default=0.5"
    tax_a: "consider missing data per taxon (default: per site)"
    codon: "examine sequences by codon rather than site\\n- requires all sequences be in frame and of correct length"
    info: "report counts of missing data and exit\\n- combine with -t to get report by taxon (rather than site)\\n- combine with -c to use codons as units"
    verbose: "more verbose output (i.e. if entire seqs are removed)"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}