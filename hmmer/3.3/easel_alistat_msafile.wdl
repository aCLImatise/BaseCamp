version 1.0

task EaselAlistatMsafile {
  input {
    Boolean optionsOptions
  }
  command <<<
    easel alistat msafile \
      ~{true="-options" false="" optionsOptions}
  >>>
}