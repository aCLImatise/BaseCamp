version 1.0

task Barrnap {
  input {
    Boolean? citation
    Boolean? kingdom
    Boolean? quiet
    Boolean? threads
    Boolean? len_cut_off
    Boolean? reject
    Boolean? evalue
    Boolean? in_cseq
    Boolean? out_seq
  }
  command <<<
    barrnap \
      ~{if (citation) then "--citation" else ""} \
      ~{if (kingdom) then "--kingdom" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (len_cut_off) then "--lencutoff" else ""} \
      ~{if (reject) then "--reject" else ""} \
      ~{if (evalue) then "--evalue" else ""} \
      ~{if (in_cseq) then "--incseq" else ""} \
      ~{if (out_seq) then "--outseq" else ""}
  >>>
  parameter_meta {
    citation: "Print citation for referencing barrnap"
    kingdom: "[X]     Kingdom: arc mito bac euk (default 'bac')"
    quiet: "No screen output (default OFF)"
    threads: "[N]     Number of threads/cores/CPUs to use (default '1')"
    len_cut_off: "[n.n] Proportional length threshold to label as partial (default '0.8')"
    reject: "[n.n]    Proportional length threshold to reject prediction (default '0.25')"
    evalue: "[n.n]    Similarity e-value cut-off (default '1e-06')"
    in_cseq: "Include FASTA _input_ sequences in GFF3 output (default OFF)"
    out_seq: "[X]      Save rRNA hit seqs to this FASTA file (default '')"
  }
  output {
    File out_stdout = stdout()
  }
}