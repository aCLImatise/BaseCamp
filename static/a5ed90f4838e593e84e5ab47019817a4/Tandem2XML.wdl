version 1.0

task Tandem2XML {
  input {
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    Tandem2XML \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}