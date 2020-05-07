version 1.0

task EpaNg {
  input {
    Boolean verboseVerbose
    String bBFast
    Boolean dumpDumpBinary
    String splitSplit
    String treeTree
    String refRefMsa
    String binaryBinary
    String queryQuery
    String modelModel
    String outOutDir
    Float filterFilterAccLwr
    Float filterFilterMinLwr
    String filterFilterMin
    String filterFilterMax
    String precisionPrecision
    Boolean redoRedo
    String preservePreserveRooting
    Float dynDynHeur
    Float fixFixHeur
    String baseballBaseballHeur
    String noNoHeur
    String chunkChunkSize
    Boolean raRaXmlBlo
    Boolean noNoPreMask
    String rateRateScalers
    String threadsThreads
    String? optionsOptions
  }
  command <<<
    epa-ng \
      ~{optionsOptions} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(bBFast) then ("--bfast " +  '"' + bBFast + '"') else ""} \
      ~{true="--dump-binary" false="" dumpDumpBinary} \
      ~{if defined(splitSplit) then ("--split " +  '"' + splitSplit + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(refRefMsa) then ("--ref-msa " +  '"' + refRefMsa + '"') else ""} \
      ~{if defined(binaryBinary) then ("--binary " +  '"' + binaryBinary + '"') else ""} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(filterFilterAccLwr) then ("--filter-acc-lwr " +  '"' + filterFilterAccLwr + '"') else ""} \
      ~{if defined(filterFilterMinLwr) then ("--filter-min-lwr " +  '"' + filterFilterMinLwr + '"') else ""} \
      ~{if defined(filterFilterMin) then ("--filter-min " +  '"' + filterFilterMin + '"') else ""} \
      ~{if defined(filterFilterMax) then ("--filter-max " +  '"' + filterFilterMax + '"') else ""} \
      ~{if defined(precisionPrecision) then ("--precision " +  '"' + precisionPrecision + '"') else ""} \
      ~{true="--redo" false="" redoRedo} \
      ~{if defined(preservePreserveRooting) then ("--preserve-rooting " +  '"' + preservePreserveRooting + '"') else ""} \
      ~{if defined(dynDynHeur) then ("--dyn-heur " +  '"' + dynDynHeur + '"') else ""} \
      ~{if defined(fixFixHeur) then ("--fix-heur " +  '"' + fixFixHeur + '"') else ""} \
      ~{if defined(baseballBaseballHeur) then ("--baseball-heur " +  '"' + baseballBaseballHeur + '"') else ""} \
      ~{if defined(noNoHeur) then ("--no-heur " +  '"' + noNoHeur + '"') else ""} \
      ~{if defined(chunkChunkSize) then ("--chunk-size " +  '"' + chunkChunkSize + '"') else ""} \
      ~{true="--raxml-blo" false="" raRaXmlBlo} \
      ~{true="--no-pre-mask" false="" noNoPreMask} \
      ~{if defined(rateRateScalers) then ("--rate-scalers " +  '"' + rateRateScalers + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}