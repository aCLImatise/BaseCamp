version 1.0

task EaselFilterMaxid {
  input {
    Boolean optionsOptions
    String? msaMsaFile
  }
  command <<<
    easel filter maxid \
      ~{msaMsaFile} \
      ~{true="-options" false="" optionsOptions}
  >>>
}