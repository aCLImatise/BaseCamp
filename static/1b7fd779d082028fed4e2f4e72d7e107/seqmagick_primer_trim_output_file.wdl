version 1.0

task SeqmagickPrimerTrimOutputFile {
  input {
    Boolean? reverse_is_rev_comp
    String seq_magick
    String primer_trim
  }
  command <<<
    seqmagick primer-trim output_file \
      ~{seq_magick} \
      ~{primer_trim} \
      ~{true="--reverse-is-revcomp" false="" reverse_is_rev_comp}
  >>>
  parameter_meta {
    reverse_is_rev_comp: ""
    seq_magick: ""
    primer_trim: ""
  }
}