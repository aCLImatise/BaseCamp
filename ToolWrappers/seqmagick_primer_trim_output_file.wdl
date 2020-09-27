version 1.0

task SeqmagickPrimertrimOutputFile {
  input {
    Boolean? reverse_is_rev_comp
    String seq_magick
    String primer_trim
  }
  command <<<
    seqmagick primer_trim output_file \
      ~{seq_magick} \
      ~{primer_trim} \
      ~{if (reverse_is_rev_comp) then "--reverse-is-revcomp" else ""}
  >>>
  parameter_meta {
    reverse_is_rev_comp: ""
    seq_magick: ""
    primer_trim: ""
  }
  output {
    File out_stdout = stdout()
  }
}