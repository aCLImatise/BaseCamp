version 1.0

task HeraBuild {
  input {
    Boolean? fast_a
    Boolean? gtf
    Boolean? outdir
    Boolean? full_index
    Boolean? gr_ch_three_eight
  }
  command <<<
    hera_build \
      ~{true="--fasta" false="" fast_a} \
      ~{true="--gtf" false="" gtf} \
      ~{true="--outdir" false="" outdir} \
      ~{true="--full_index" false="" full_index} \
      ~{true="--grch38" false="" gr_ch_three_eight}
  >>>
  parameter_meta {
    fast_a: "input reference genome fasta file"
    gtf: "input reference annotation gtf file"
    outdir: "output directory"
    full_index: "0: none, 1: index full genome"
    gr_ch_three_eight: "is input fasta GRCh38? 0: No, 1: Yes"
  }
}