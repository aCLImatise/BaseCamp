version 1.0

task Pyssw.py.bak {
  input {
    String sSLibpath
    String nNMatch
    String nNMismatch
    String nNOpen
    String nextNext
    Boolean bBProtien
    String sSMatrix
    Boolean bBPath
    String nNThr
    Boolean bBBest
    Boolean bBSam
    Boolean bBHeader
    String? targetTarget
    String? queryQuery
  }
  command <<<
    pyssw.py.bak \
      ~{targetTarget} \
      ~{if defined(sSLibpath) then ("--sLibPath " +  '"' + sSLibpath + '"') else ""} \
      ~{if defined(nNMatch) then ("--nMatch " +  '"' + nNMatch + '"') else ""} \
      ~{if defined(nNMismatch) then ("--nMismatch " +  '"' + nNMismatch + '"') else ""} \
      ~{if defined(nNOpen) then ("--nOpen " +  '"' + nNOpen + '"') else ""} \
      ~{if defined(nextNext) then ("--nExt " +  '"' + nextNext + '"') else ""} \
      ~{true="--bProtien" false="" bBProtien} \
      ~{if defined(sSMatrix) then ("--sMatrix " +  '"' + sSMatrix + '"') else ""} \
      ~{true="--bPath" false="" bBPath} \
      ~{if defined(nNThr) then ("--nThr " +  '"' + nNThr + '"') else ""} \
      ~{true="--bBest" false="" bBBest} \
      ~{true="--bSam" false="" bBSam} \
      ~{true="--bHeader" false="" bBHeader} \
      ~{queryQuery}
  >>>
}