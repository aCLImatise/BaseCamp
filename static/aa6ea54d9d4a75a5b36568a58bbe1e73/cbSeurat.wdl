version 1.0

task CbSeurat {
  input {
    Boolean inInIt
    String exprExprMatrix
    String outdirOutdir
    String confConfFname
    String threadThreadCount
    String nameName
    Boolean debugDebug
  }
  command <<<
    cbSeurat \
      ~{true="--init" false="" inInIt} \
      ~{if defined(exprExprMatrix) then ("--exprMatrix " +  '"' + exprExprMatrix + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outDir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(confConfFname) then ("--confFname " +  '"' + confConfFname + '"') else ""} \
      ~{if defined(threadThreadCount) then ("--threadCount " +  '"' + threadThreadCount + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}