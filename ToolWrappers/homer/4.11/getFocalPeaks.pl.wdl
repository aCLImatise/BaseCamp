version 1.0

task GetFocalPeakspl {
  input {
    Boolean? min
    Boolean? max
    String peaks_dot_centered_dot_txt
  }
  command <<<
    getFocalPeaks_pl \
      ~{peaks_dot_centered_dot_txt} \
      ~{if (min) then "-min" else ""} \
      ~{if (max) then "-max" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min: "<#> (minimum focus ratio threshold, default: 0.75)"
    max: "<#> (maximum focus ratio threshold, default: none)"
    peaks_dot_centered_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}