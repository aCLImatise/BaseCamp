version 1.0

task SCFtoCTGOutputfile {
  input {
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    SCFtoCTG outputfile \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}