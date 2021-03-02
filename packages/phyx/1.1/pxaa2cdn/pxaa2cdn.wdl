version 1.0

task Pxaa2cdn {
  input {
    File? aa_seq_f
    File? nuc_seq_f
    File? out_f
    Boolean? rm_last_cdn
    Boolean? citation
  }
  command <<<
    pxaa2cdn \
      ~{if defined(aa_seq_f) then ("--aaseqf " +  '"' + aa_seq_f + '"') else ""} \
      ~{if defined(nuc_seq_f) then ("--nucseqf " +  '"' + nuc_seq_f + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (rm_last_cdn) then "--rmlastcdn" else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    aa_seq_f: "input sequence file, STDIN otherwise"
    nuc_seq_f: "input sequence file, STDIN otherwise"
    out_f: "output fasta file, STOUT otherwise"
    rm_last_cdn: "removes last codon (default: false)"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}