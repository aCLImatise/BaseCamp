version 1.0

task DxDockerAddToApplet {
  input {
    Boolean? alternative_export
  }
  command <<<
    dx-docker add-to-applet \
      ~{true="--alternative_export" false="" alternative_export}
  >>>
  parameter_meta {
    alternative_export: "EXPERT ONLY: Use alternative method to export Docker image since Docker CLI export sometimes doesn't create the root filesystem properly."
  }
}