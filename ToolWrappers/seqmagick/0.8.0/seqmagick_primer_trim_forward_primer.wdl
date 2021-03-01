version 1.0

task SeqmagickPrimertrimForwardPrimer {
  input {
    Boolean? reverse_is_rev_comp
    String seq_magick
    String primer_trim
  }
  command <<<
    seqmagick primer_trim forward_primer \
      ~{seq_magick} \
      ~{primer_trim} \
      ~{if (reverse_is_rev_comp) then "--reverse-is-revcomp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reverse_is_rev_comp: ""
    seq_magick: ""
    primer_trim: ""
  }
  output {
    File out_stdout = stdout()
  }
}