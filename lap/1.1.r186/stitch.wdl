version 1.0

task Stitch {
  input {
    Boolean? out_ie
    String? option_dot_dot_dot
  }
  command <<<
    stitch \
      ~{option_dot_dot_dot} \
      ~{true="--outie" false="" out_ie}
  >>>
  parameter_meta {
    out_ie: "Reverse complement the first mate, instead of the second"
    option_dot_dot_dot: ""
  }
}