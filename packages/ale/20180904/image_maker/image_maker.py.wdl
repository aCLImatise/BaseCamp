version 1.0

task ImageMakerpy {
  command <<<
    image_maker_py
  >>>
  output {
    File out_stdout = stdout()
  }
}