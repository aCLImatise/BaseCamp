version 1.0

task Nanovar {
  input {
    String dataDataType
    File filterFilterBed
    Int minMinCov
    Int minMinLen
    Float splitSplitPct
    Int minMinAlign
    Int bufferBuffer
    Float scoreScore
    Float homoHomo
    Float heteroHetero
    Boolean debugDebug
    Boolean forceForce
    Boolean quietQuiet
    Int threadsThreads
    File modelModel
    File mmMm
    File stSt
    File mdbMdb
    File wmkWmk
    File hsbHsb
  }
  command <<<
    nanovar \
      ~{if defined(dataDataType) then ("--data_type " +  '"' + dataDataType + '"') else ""} \
      ~{if defined(filterFilterBed) then ("--filter_bed " +  '"' + filterFilterBed + '"') else ""} \
      ~{if defined(minMinCov) then ("--mincov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(splitSplitPct) then ("--splitpct " +  '"' + splitSplitPct + '"') else ""} \
      ~{if defined(minMinAlign) then ("--minalign " +  '"' + minMinAlign + '"') else ""} \
      ~{if defined(bufferBuffer) then ("--buffer " +  '"' + bufferBuffer + '"') else ""} \
      ~{if defined(scoreScore) then ("--score " +  '"' + scoreScore + '"') else ""} \
      ~{if defined(homoHomo) then ("--homo " +  '"' + homoHomo + '"') else ""} \
      ~{if defined(heteroHetero) then ("--hetero " +  '"' + heteroHetero + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--force" false="" forceForce} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(mmMm) then ("--mm " +  '"' + mmMm + '"') else ""} \
      ~{if defined(stSt) then ("--st " +  '"' + stSt + '"') else ""} \
      ~{if defined(mdbMdb) then ("--mdb " +  '"' + mdbMdb + '"') else ""} \
      ~{if defined(wmkWmk) then ("--wmk " +  '"' + wmkWmk + '"') else ""} \
      ~{if defined(hsbHsb) then ("--hsb " +  '"' + hsbHsb + '"') else ""}
  >>>
}