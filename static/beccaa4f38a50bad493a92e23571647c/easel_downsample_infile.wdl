version 1.0

task EaselDownsampleInfile {
  input {
    Boolean optionsOptions
    String? mM
    String? inInFile
  }
  command <<<
    easel downsample infile \
      ~{mM} \
      ~{true="-options" false="" optionsOptions} \
      ~{inInFile}
  >>>
}