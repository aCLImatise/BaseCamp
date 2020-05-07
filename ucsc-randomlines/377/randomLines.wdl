version 1.0

task RandomLines {
  input {
    String seedSeed
    String deDeComment
    String? inInFile
    String? countCount
    String? outfileOutfile
  }
  command <<<
    randomLines \
      ~{inInFile} \
      ~{if defined(seedSeed) then ("-seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(deDeComment) then ("-decomment " +  '"' + deDeComment + '"') else ""} \
      ~{countCount} \
      ~{outfileOutfile}
  >>>
}