version 1.0

task Shrec.py {
  input {
    String inInFile
    Boolean cmmCmm
    Boolean mtxMtx
    Boolean showShow
    Boolean distDist
    Boolean verboseVerbose
    Boolean strictStrict
    String scaleScale
    String fwFw
  }
  command <<<
    shrec.py \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{true="--cmm" false="" cmmCmm} \
      ~{true="--mtx" false="" mtxMtx} \
      ~{true="--show" false="" showShow} \
      ~{true="--dist" false="" distDist} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--strict" false="" strictStrict} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""} \
      ~{if defined(fwFw) then ("--fw " +  '"' + fwFw + '"') else ""}
  >>>
}