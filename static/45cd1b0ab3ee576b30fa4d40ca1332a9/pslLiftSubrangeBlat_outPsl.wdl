version 1.0

task PslLiftSubrangeBlatOutPsl {
  input {
    String? isIsPsl
    String? outOutPsl
  }
  command <<<
    pslLiftSubrangeBlat outPsl \
      ~{isIsPsl} \
      ~{outOutPsl}
  >>>
}