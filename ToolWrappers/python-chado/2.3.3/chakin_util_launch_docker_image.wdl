version 1.0

task ChakinUtilLaunchDockerImage {
  input {
    Boolean? background
    Boolean? no_yeast
    String options
  }
  command <<<
    chakin util launch_docker_image \
      ~{options} \
      ~{if (background) then "--background" else ""} \
      ~{if (no_yeast) then "--no_yeast" else ""}
  >>>
  parameter_meta {
    background: "Launch the image in the background"
    no_yeast: "Disable loading of example yeast data"
    options: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}