version 1.0

task GetFocalPeaks.pl {
  input {
    Boolean minMin
    Boolean maxMax
  }
  command <<<
    getFocalPeaks.pl \
      ~{true="-min" false="" minMin} \
      ~{true="-max" false="" maxMax}
  >>>
}