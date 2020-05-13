version 1.0

task RAMBOK.py {
  input {
    String kmKmErSizes
    String outOutPath
    String amountAmount
    String threadsThreads
    String chunksizeChunksize
    String gapGapSize
    String cutCutOffLower
    String cutCutOffHigher
    Boolean deleteDeleteTemp
    File fileFileType
  }
  command <<<
    RAMBOK.py \
      ~{if defined(kmKmErSizes) then ("--kmersizes " +  '"' + kmKmErSizes + '"') else ""} \
      ~{if defined(outOutPath) then ("--outpath " +  '"' + outOutPath + '"') else ""} \
      ~{if defined(amountAmount) then ("--amount " +  '"' + amountAmount + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(chunksizeChunksize) then ("--chunksize " +  '"' + chunksizeChunksize + '"') else ""} \
      ~{if defined(gapGapSize) then ("--gapsize " +  '"' + gapGapSize + '"') else ""} \
      ~{if defined(cutCutOffLower) then ("--cutoff_lower " +  '"' + cutCutOffLower + '"') else ""} \
      ~{if defined(cutCutOffHigher) then ("--cutoff_higher " +  '"' + cutCutOffHigher + '"') else ""} \
      ~{true="--delete_temp" false="" deleteDeleteTemp} \
      ~{if defined(fileFileType) then ("--filetype " +  '"' + fileFileType + '"') else ""}
  >>>
}