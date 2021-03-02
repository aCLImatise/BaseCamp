version 1.0

task FastautilsTranslate {
  input {
    Boolean? trans_table
    Boolean? one_seq
    Boolean? no_wrap
    Boolean? progress
    String? fast_a_file
    String? output_file
  }
  command <<<
    fasta_utils translate \
      ~{fast_a_file} \
      ~{output_file} \
      ~{if (trans_table) then "--trans-table" else ""} \
      ~{if (one_seq) then "--one-seq" else ""} \
      ~{if (no_wrap) then "--no-wrap" else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    trans_table: "[bac_plt|drs_mit|inv_mit|prt_mit|universal|vt_mit|yst_alt|yst_mit]\\ntranslation table  [default: universal]"
    one_seq: "Only translate the sequence, instead of all\\n6 frames  [default: False]"
    no_wrap: "Make a sequence use only 1 line (2 including\\nheader)  [default: False]"
    progress: "Shows Progress Bar"
    fast_a_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}