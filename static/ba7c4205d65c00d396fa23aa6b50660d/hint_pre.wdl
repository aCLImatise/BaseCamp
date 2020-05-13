version 1.0

task HintPre {
  input {
    String dataData
    String refRefDir
    String samSamToolsPath
    String alignerAlignerBwa
    String bwaBwaIndex
    String genomeGenome
    String inInFormat
    String outOutFormat
    String resolutionResolution
    String coolerCoolerPath
    String juicerJuicerPath
    String pairPairToolsPath
    String nameName
    String outdirOutdir
    String threadsThreads
  }
  command <<<
    hint pre \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(refRefDir) then ("--refdir " +  '"' + refRefDir + '"') else ""} \
      ~{if defined(samSamToolsPath) then ("--samtoolspath " +  '"' + samSamToolsPath + '"') else ""} \
      ~{if defined(alignerAlignerBwa) then ("--alignerbwa " +  '"' + alignerAlignerBwa + '"') else ""} \
      ~{if defined(bwaBwaIndex) then ("--bwaIndex " +  '"' + bwaBwaIndex + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(outOutFormat) then ("--outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{if defined(resolutionResolution) then ("--resolution " +  '"' + resolutionResolution + '"') else ""} \
      ~{if defined(coolerCoolerPath) then ("--coolerpath " +  '"' + coolerCoolerPath + '"') else ""} \
      ~{if defined(juicerJuicerPath) then ("--juicerpath " +  '"' + juicerJuicerPath + '"') else ""} \
      ~{if defined(pairPairToolsPath) then ("--pairtoolspath " +  '"' + pairPairToolsPath + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}