version 1.0

task Xsv {
  input {
    Boolean listList
  }
  command <<<
    xsv \
      ~{true="--list" false="" listList}
  >>>
}