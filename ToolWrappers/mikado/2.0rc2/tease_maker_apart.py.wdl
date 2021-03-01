version 1.0

task TeaseMakerApartpy {
  command <<<
    tease_maker_apart_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}