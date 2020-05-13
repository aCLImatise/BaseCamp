version 1.0

task TrimGalore {
  input {
    Boolean hardHardTrim5
    Boolean hardHardTrim3
  }
  command <<<
    trim_galore \
      ~{true="--hardtrim5" false="" hardHardTrim5} \
      ~{true="--hardtrim3" false="" hardHardTrim3}
  >>>
}