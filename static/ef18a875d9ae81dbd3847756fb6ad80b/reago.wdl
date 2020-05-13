version 1.0

task Reago.py {
  input {
    String lL
    String? pythonPython
    String? reReAgoPy
    File? filenameFilenameFastA
    String? outputOutputDir
  }
  command <<<
    reago.py \
      ~{pythonPython} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{reReAgoPy} \
      ~{filenameFilenameFastA} \
      ~{outputOutputDir}
  >>>
}