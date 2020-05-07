version 1.0

task PslLiftSubrangeBlatIsPsl {
  input {
    String? outOutPsl
  }
  command <<<
    pslLiftSubrangeBlat isPsl \
      ~{outOutPsl}
  >>>
}