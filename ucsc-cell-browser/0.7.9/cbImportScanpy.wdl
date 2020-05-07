version 1.0

task CbImportScanpy {
  input {
    String cbCbImportsCanPy
    Boolean debugDebug
    String inInFile
    Boolean procProc
    String outdirOutdir
    String nameName
    String htmlHtmlDir
    String portPort
    String markerMarkerField
    String clusterClusterField
    Boolean skipSkipMatrix
  }
  command <<<
    cbImportScanpy \
      ~{if defined(cbCbImportsCanPy) then ("- cbImportScanpy " +  '"' + cbCbImportsCanPy + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(inInFile) then ("--inFile " +  '"' + inInFile + '"') else ""} \
      ~{true="--proc" false="" procProc} \
      ~{if defined(outdirOutdir) then ("--outDir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(htmlHtmlDir) then ("--htmlDir " +  '"' + htmlHtmlDir + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(markerMarkerField) then ("--markerField " +  '"' + markerMarkerField + '"') else ""} \
      ~{if defined(clusterClusterField) then ("--clusterField " +  '"' + clusterClusterField + '"') else ""} \
      ~{true="--skipMatrix" false="" skipSkipMatrix}
  >>>
}