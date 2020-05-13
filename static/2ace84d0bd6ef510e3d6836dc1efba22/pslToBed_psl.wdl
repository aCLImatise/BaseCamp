version 1.0

task PslToBedPsl {
  input {
    String? bedBed
  }
  command <<<
    pslToBed psl \
      ~{bedBed}
  >>>
}