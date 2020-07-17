version 1.0

task GetFocalPeaks.pl {
  input {
    Boolean? min
    Boolean? max
    String peaks_dot_centered_dot_txt
  }
  command <<<
    getFocalPeaks.pl \
      ~{peaks_dot_centered_dot_txt} \
      ~{true="-min" false="" min} \
      ~{true="-max" false="" max}
  >>>
  parameter_meta {
    min: "<#> (minimum focus ratio threshold, default: 0.75)"
    max: "<#> (maximum focus ratio threshold, default: none)"
    peaks_dot_centered_dot_txt: ""
  }
}