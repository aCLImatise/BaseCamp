version 1.0

task CreateChemistryHeader.py {
  input {
    Boolean debugDebug
    Array[String]+ basBasFiles
    String? inputInputAlignmentFile
    String? outputOutputHeaderFile
  }
  command <<<
    createChemistryHeader.py \
      ~{inputInputAlignmentFile} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(basBasFiles) then ("--bas_files " +  '"' + basBasFiles + '"') else ""} \
      ~{outputOutputHeaderFile}
  >>>
}