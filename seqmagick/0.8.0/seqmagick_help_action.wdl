version 1.0

task SeqmagickHelpAction {
  input {
    Boolean? var_0
    Boolean? var_1
    Boolean? q
    String seq_magick
  }
  command <<<
    seqmagick help action \
      ~{seq_magick} \
      ~{true="-V" false="" var_0} \
      ~{true="-v" false="" var_1} \
      ~{true="-q" false="" q}
  >>>
  parameter_meta {
    var_0: ""
    var_1: ""
    q: ""
    seq_magick: ""
  }
}