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
    String chr_dot_fa
  }
  command <<<
    barrnap \
      ~{chr_dot_fa} \
      ~{true="--citation" false="" citation} \
      ~{true="--kingdom" false="" kingdom} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--threads" false="" threads} \
      ~{true="--lencutoff" false="" len_cut_off} \
      ~{true="--reject" false="" reject} \
      ~{true="--evalue" false="" evalue} \
      ~{true="--incseq" false="" in_cseq} \
      ~{true="--outseq" false="" out_seq}
  >>>
  parameter_meta {
    citation: "Print citation for referencing barrnap"
    kingdom: "[X]     Kingdom: euk bac mito arc (default 'bac')"
    quiet: "No screen output (default OFF)"
    threads: "[N]     Number of threads/cores/CPUs to use (default '1')"
    len_cut_off: "[n.n] Proportional length threshold to label as partial (default '0.8')"
    reject: "[n.n]    Proportional length threshold to reject prediction (default '0.25')"
    evalue: "[n.n]    Similarity e-value cut-off (default '1e-06')"
    in_cseq: "Include FASTA _input_ sequences in GFF3 output (default OFF)"
    out_seq: "[X]      Save rRNA hit seqs to this FASTA file (default '')"
    chr_dot_fa: ""
  }
}