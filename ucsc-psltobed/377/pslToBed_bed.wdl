version 1.0

task PslToBedBed {
  input {
    String? pslPsl
    String? bedBed
  }
  command <<<
    pslToBed bed \
      ~{pslPsl} \
      ~{bedBed}
  >>>
}