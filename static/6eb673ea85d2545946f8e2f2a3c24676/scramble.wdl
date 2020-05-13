version 1.0

task Scramble {
  input {
    File gG
    File gG
    String xX
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    scramble \
      ~{inputInputFile} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{if defined(xX) then ("-X " +  '"' + xX + '"') else ""} \
      ~{outputOutputFile}
  >>>
}