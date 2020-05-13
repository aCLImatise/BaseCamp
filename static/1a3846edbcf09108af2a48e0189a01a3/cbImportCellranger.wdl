version 1.0

task CbImportCellranger {
  input {
    Boolean debugDebug
    String inInDir
    String outdirOutdir
    String nameName
    Boolean noNoMat
    String? cellCellRanger
    String? outputOutput
    String? toTo
    String? cellCellBrowser
    String? formatFormat
    String? andAnd
    String? createCreate
    String? aA
    String? cellCellRangerConf
    File? fileFile
  }
  command <<<
    cbImportCellranger \
      ~{cellCellRanger} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(inInDir) then ("--inDir " +  '"' + inInDir + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outDir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--noMat" false="" noNoMat} \
      ~{outputOutput} \
      ~{toTo} \
      ~{cellCellBrowser} \
      ~{formatFormat} \
      ~{andAnd} \
      ~{createCreate} \
      ~{aA} \
      ~{cellCellRangerConf} \
      ~{fileFile}
  >>>
}