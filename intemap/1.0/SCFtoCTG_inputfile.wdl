version 1.0

task SCFtoCTGInputfile {
  input {
    String? outputOutputFile
  }
  command <<<
    SCFtoCTG inputfile \
      ~{outputOutputFile}
  >>>
}