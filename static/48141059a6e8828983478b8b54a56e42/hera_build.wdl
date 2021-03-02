version 1.0

task HeraBuild {
  input {
    Boolean? fast_a
    Boolean? gtf
    Directory? outdir
    Boolean? full_index
    Boolean? gr_ch_three_eight
  }
  command <<<
    hera_build \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (gtf) then "--gtf" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (full_index) then "--full_index" else ""} \
      ~{if (gr_ch_three_eight) then "--grch38" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a: "input reference genome fasta file"
    gtf: "input reference annotation gtf file"
    outdir: "output directory"
    full_index: "0: none, 1: index full genome"
    gr_ch_three_eight: "is input fasta GRCh38? 0: No, 1: Yes"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}