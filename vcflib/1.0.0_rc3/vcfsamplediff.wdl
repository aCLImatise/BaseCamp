version 1.0

task Vcfsamplediff {
  input {
    Boolean strictStrict
  }
  command <<<
    vcfsamplediff \
      ~{true="--strict" false="" strictStrict}
  >>>
}