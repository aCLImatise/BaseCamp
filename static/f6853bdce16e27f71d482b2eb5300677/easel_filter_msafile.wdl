version 1.0

task EaselFilterMsafile {
  input {
    Boolean optionsOptions
    Int? maxMaxId
    String? msaMsaFile
  }
  command <<<
    easel filter msafile \
      ~{maxMaxId} \
      ~{true="-options" false="" optionsOptions} \
      ~{msaMsaFile}
  >>>
}