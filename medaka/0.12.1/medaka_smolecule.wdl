version 1.0

task MedakaSmolecule {
  input {
    Boolean debugDebug
    Boolean quietQuiet
    String batchBatchSize
    Array[String]+ regionsRegions
    String chunkChunkLen
    String chunkChunkOvlp
    String modelModel
    Boolean disableDisableCuDnn
    String depthDepth
    Int lengthLength
    String threadsThreads
    Boolean checkCheckOutput
    Boolean saveSaveFeatures
    String? fastFastA
    String? outputOutput
  }
  command <<<
    medaka smolecule \
      ~{fastFastA} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(batchBatchSize) then ("--batch_size " +  '"' + batchBatchSize + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(chunkChunkLen) then ("--chunk_len " +  '"' + chunkChunkLen + '"') else ""} \
      ~{if defined(chunkChunkOvlp) then ("--chunk_ovlp " +  '"' + chunkChunkOvlp + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{true="--disable_cudnn" false="" disableDisableCuDnn} \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--check_output" false="" checkCheckOutput} \
      ~{true="--save_features" false="" saveSaveFeatures} \
      ~{outputOutput}
  >>>
}