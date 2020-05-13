version 1.0

task Wftopfa {
  input {
    Boolean dictDict
  }
  command <<<
    wftopfa \
      ~{true="--dict" false="" dictDict}
  >>>
}