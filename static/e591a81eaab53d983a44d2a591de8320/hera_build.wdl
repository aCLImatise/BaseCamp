version 1.0

task HeraBuild {
  input {
    Int? full_index
    Int? gr_ch_three_eight
    Boolean? fast_a
    Boolean? gtf
    Directory? outdir
  }
  command <<<
    hera_build \
      ~{if defined(full_index) then ("--full_index " +  '"' + full_index + '"') else ""} \
      ~{if defined(gr_ch_three_eight) then ("--grch38 " +  '"' + gr_ch_three_eight + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (gtf) then "--gtf" else ""} \
      ~{if (outdir) then "--outdir" else ""}
  >>>
  parameter_meta {
    full_index: ""
    gr_ch_three_eight: ""
    fast_a: "input reference genome fasta file"
    gtf: "input reference annotation gtf file"
    outdir: "output directory"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}