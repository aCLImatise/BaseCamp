version 1.0

task GraphicsMagick++Config {
  input {
    String graphicsmagick
  }
  command <<<
    GraphicsMagick++-config \
      ~{graphicsmagick}
  >>>
  parameter_meta {
    graphicsmagick: ""
  }
}