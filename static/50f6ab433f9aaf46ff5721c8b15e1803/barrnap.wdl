version 1.0

task Barrnap.py {
  input {
    String? kingdom
    String? threads
    String? evalue
    String? len_cut_off
    String? reject
    Boolean? in_cseq
    Boolean? citation
  }
  command <<<
    barrnap.py \
      ~{if defined(kingdom) then ("--kingdom " +  '"' + kingdom + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(len_cut_off) then ("--lencutoff " +  '"' + len_cut_off + '"') else ""} \
      ~{if defined(reject) then ("--reject " +  '"' + reject + '"') else ""} \
      ~{true="--incseq" false="" in_cseq} \
      ~{true="--citation" false="" citation}
  >>>
  parameter_meta {
    kingdom: "whether to look for eukaryotic, archaeal, or bacterial rDNA; default: bac"
    threads: "Number of threads/cores/CPUs to use;default: 8"
    evalue: "Similarity e-value cut-off; default: 1e-06"
    len_cut_off: "Proportional length threshold to label as partial; default: 0.8"
    reject: "Proportional length threshold to reject prediction; default: 0.5"
    in_cseq: "Include FASTA input sequences in GFF3 output"
    citation: "Print citation for referencing barrnap"
  }
}