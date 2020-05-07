version 1.0

task PModel {
  input {
    Boolean optionsOptions
    String? modModFile
  }
  command <<<
    pModel \
      ~{modModFile} \
      ~{true="-options" false="" optionsOptions}
  >>>
}