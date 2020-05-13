version 1.0

task HalLodInterpolate.py {
  input {
    Int maxMaxBlock
    String scaleScale
    String outOutHaldir
    Boolean resumeResume
    Int maxMaxDna
    Boolean absAbsPath
    Boolean transTrans
    Boolean inInMemory
    String probeProbeFrac
    Int minMinSeqFrac
    Int minMinCovFrac
    String scaleScaleCorFac
    String numNumProc
    String chunkChunk
    Int minlod0Minlod0
    String cutCutOff
    String? halHal
    String? outOutLodFile
  }
  command <<<
    halLodInterpolate.py \
      ~{halHal} \
      ~{if defined(maxMaxBlock) then ("--maxBlock " +  '"' + maxMaxBlock + '"') else ""} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""} \
      ~{if defined(outOutHaldir) then ("--outHalDir " +  '"' + outOutHaldir + '"') else ""} \
      ~{true="--resume" false="" resumeResume} \
      ~{if defined(maxMaxDna) then ("--maxDNA " +  '"' + maxMaxDna + '"') else ""} \
      ~{true="--absPath" false="" absAbsPath} \
      ~{true="--trans" false="" transTrans} \
      ~{true="--inMemory" false="" inInMemory} \
      ~{if defined(probeProbeFrac) then ("--probeFrac " +  '"' + probeProbeFrac + '"') else ""} \
      ~{if defined(minMinSeqFrac) then ("--minSeqFrac " +  '"' + minMinSeqFrac + '"') else ""} \
      ~{if defined(minMinCovFrac) then ("--minCovFrac " +  '"' + minMinCovFrac + '"') else ""} \
      ~{if defined(scaleScaleCorFac) then ("--scaleCorFac " +  '"' + scaleScaleCorFac + '"') else ""} \
      ~{if defined(numNumProc) then ("--numProc " +  '"' + numNumProc + '"') else ""} \
      ~{if defined(chunkChunk) then ("--chunk " +  '"' + chunkChunk + '"') else ""} \
      ~{if defined(minlod0Minlod0) then ("--minLod0 " +  '"' + minlod0Minlod0 + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutOff " +  '"' + cutCutOff + '"') else ""} \
      ~{outOutLodFile}
  >>>
}