version 1.0

task GraphicsMagickconfig {
  input {
    String graphicsmagick
  }
  command <<<
    GraphicsMagick___config \
      ~{graphicsmagick}
  >>>
  parameter_meta {
    graphicsmagick: ""
  }
  output {
    File out_stdout = stdout()
  }
}