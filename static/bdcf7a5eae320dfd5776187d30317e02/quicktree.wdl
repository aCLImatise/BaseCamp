version 1.0

task Quicktree {
  input {
    Boolean optionsOptions
    String? inputInputFile
  }
  command <<<
    quicktree \
      ~{inputInputFile} \
      ~{true="-options" false="" optionsOptions}
  >>>
}