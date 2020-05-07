version 1.0

task CbScanpy {
  input {
    String exprExprMatrix
    String metaMeta
    String outdirOutdir
    String nameName
    Boolean inInIt
    Boolean samplesSamplesOnRows
    String confConfFname
    String inInCluster
    Boolean skipSkipMatrix
    Boolean copyCopyMatrix
    String genomeGenome
    Boolean testTest
    Boolean debugDebug
  }
  command <<<
    cbScanpy \
      ~{if defined(exprExprMatrix) then ("--exprMatrix " +  '"' + exprExprMatrix + '"') else ""} \
      ~{if defined(metaMeta) then ("--meta " +  '"' + metaMeta + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outDir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--init" false="" inInIt} \
      ~{true="--samplesOnRows" false="" samplesSamplesOnRows} \
      ~{if defined(confConfFname) then ("--confFname " +  '"' + confConfFname + '"') else ""} \
      ~{if defined(inInCluster) then ("--inCluster " +  '"' + inInCluster + '"') else ""} \
      ~{true="--skipMatrix" false="" skipSkipMatrix} \
      ~{true="--copyMatrix" false="" copyCopyMatrix} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="--test" false="" testTest} \
      ~{true="--debug" false="" debugDebug}
  >>>
}