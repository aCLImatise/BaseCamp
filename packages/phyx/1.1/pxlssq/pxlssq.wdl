version 1.0

task Pxlssq {
  input {
    File? seq_f
    Boolean? indiv
    Boolean? n_seq
    Boolean? nchar
    Boolean? labels
    Boolean? prot
    Boolean? aligned
    Boolean? freqs
    Boolean? missing
    File? out_f
    Boolean? citation
  }
  command <<<
    pxlssq \
      ~{if defined(seq_f) then ("--seqf " +  '"' + seq_f + '"') else ""} \
      ~{if (indiv) then "--indiv" else ""} \
      ~{if (n_seq) then "--nseq" else ""} \
      ~{if (nchar) then "--nchar" else ""} \
      ~{if (labels) then "--labels" else ""} \
      ~{if (prot) then "--prot" else ""} \
      ~{if (aligned) then "--aligned" else ""} \
      ~{if (freqs) then "--freqs" else ""} \
      ~{if (missing) then "--missing" else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    seq_f: "input seq file, STDIN otherwise"
    indiv: "output stats for individual sequences"
    n_seq: "return the number of sequences"
    nchar: "return the number of characters (only if aligned)\\n- for unaligned seqs, use with -i flag"
    labels: "return all taxon labels (one per line)"
    prot: "force interpret as protein (if inference fails)"
    aligned: "return whether sequences are aligned (same length)"
    freqs: "return character state frequencies"
    missing: "return the proportion of missing (-,?) characters"
    out_f: "output stats file, STOUT otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}