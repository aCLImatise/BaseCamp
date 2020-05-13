version 1.0

task EaselDownsampleM {
  input {
    Boolean optionsOptions
    String? inInFile
  }
  command <<<
    easel downsample m \
      ~{inInFile} \
      ~{true="-options" false="" optionsOptions}
  >>>
}