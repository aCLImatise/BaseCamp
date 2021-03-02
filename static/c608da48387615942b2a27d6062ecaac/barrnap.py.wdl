version 1.0

task Barrnappy {
  input {
    String? kingdom
    Int? threads
    Float? evalue
    Int? len_cut_off
    Int? reject
    Boolean? in_cseq
    Boolean? citation
    String fast_a
  }
  command <<<
    barrnap_py \
      ~{fast_a} \
      ~{if defined(kingdom) then ("--kingdom " +  '"' + kingdom + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(len_cut_off) then ("--lencutoff " +  '"' + len_cut_off + '"') else ""} \
      ~{if defined(reject) then ("--reject " +  '"' + reject + '"') else ""} \
      ~{if (in_cseq) then "--incseq" else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    kingdom: "whether to look for eukaryotic, archaeal, or bacterial\\nrDNA; default: bac"
    threads: "Number of threads/cores/CPUs to use;default: 8"
    evalue: "Similarity e-value cut-off; default: 1e-06"
    len_cut_off: "Proportional length threshold to label as partial;\\ndefault: 0.8"
    reject: "Proportional length threshold to reject prediction;\\ndefault: 0.5"
    in_cseq: "Include FASTA input sequences in GFF3 output"
    citation: "Print citation for referencing barrnap"
    fast_a: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}