version 1.0

task Fftwwisdomtoconf {
  command <<<
    fftw_wisdom_to_conf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}