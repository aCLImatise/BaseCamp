version 1.0

task PmpBf {
  input {
    Boolean? verbosity
    String pmp
    String tree_file
    String meme_file
  }
  command <<<
    pmp_bf \
      ~{pmp} \
      ~{tree_file} \
      ~{meme_file} \
      ~{true="--verbosity" false="" verbosity}
  >>>
  parameter_meta {
    verbosity: "[1|2|3|4] (default 2)"
    pmp: ""
    tree_file: ""
    meme_file: ""
  }
}