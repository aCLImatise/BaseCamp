version 1.0

task MlocarnaNnames {
  input {
    Boolean? man
    String fast_a_file
  }
  command <<<
    mlocarna_nnames \
      ~{fast_a_file} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    man: "Full documentation"
    fast_a_file: ""
  }
}