version 1.0

task Font2cFontname {
  input {
    Boolean? nostringval
    Boolean? dict
  }
  command <<<
    font2c fontname \
      ~{true="--nostringval--" false="" nostringval} \
      ~{true="--dict" false="" dict}
  >>>
  parameter_meta {
    nostringval: "cfile   (--help)   (w)"
    dict: ":1189/1684(G)--   --dict:0/20(G)--   --dict:85/200(L)--   --dict:52/100(L)--"
  }
}