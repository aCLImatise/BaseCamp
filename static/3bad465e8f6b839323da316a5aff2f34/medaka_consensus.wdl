version 1.0

task MedakaConsensus {
  input {
    Boolean debugDebug
    Boolean quietQuiet
    String batchBatchSize
    Array[String]+ regionsRegions
    String chunkChunkLen
    String chunkChunkOvlp
    String modelModel
    Boolean disableDisableCuDnn
    String threadsThreads
    Boolean checkCheckOutput
    Boolean saveSaveFeatures
    String tagTagName
    String tagTagValue
    Boolean tagTagKeepMissing
    String rgRg
    String? bamBam
    String? outputOutput
  }
  command <<<
    medaka consensus \
      ~{bamBam} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(batchBatchSize) then ("--batch_size " +  '"' + batchBatchSize + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(chunkChunkLen) then ("--chunk_len " +  '"' + chunkChunkLen + '"') else ""} \
      ~{if defined(chunkChunkOvlp) then ("--chunk_ovlp " +  '"' + chunkChunkOvlp + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{true="--disable_cudnn" false="" disableDisableCuDnn} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--check_output" false="" checkCheckOutput} \
      ~{true="--save_features" false="" saveSaveFeatures} \
      ~{if defined(tagTagName) then ("--tag_name " +  '"' + tagTagName + '"') else ""} \
      ~{if defined(tagTagValue) then ("--tag_value " +  '"' + tagTagValue + '"') else ""} \
      ~{true="--tag_keep_missing" false="" tagTagKeepMissing} \
      ~{if defined(rgRg) then ("--RG " +  '"' + rgRg + '"') else ""} \
      ~{outputOutput}
  >>>
}