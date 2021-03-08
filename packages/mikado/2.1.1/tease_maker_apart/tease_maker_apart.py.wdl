version 1.0

task TeaseMakerApartpy {
  command <<<
    tease_maker_apart_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.1.1--py36hf0b53f7_0"
  }
  output {
    File out_stdout = stdout()
  }
}