version 1.0

task BuildBlastDB.py {
  input {
    String? pythonPython
    String? buildBuildBlastDbpY
    String? makeMakeBlastDbPath
    String? sequenceSequenceFile
  }
  command <<<
    BuildBlastDB.py \
      ~{pythonPython} \
      ~{buildBuildBlastDbpY} \
      ~{makeMakeBlastDbPath} \
      ~{sequenceSequenceFile}
  >>>
}