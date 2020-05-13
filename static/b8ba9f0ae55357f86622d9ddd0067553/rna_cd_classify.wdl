version 1.0

task RnaCdClassify {
  input {
    Int chunksizeChunksize
    String contigContig
    Int coresCores
    Directory directoryDirectory
    File listListItems
    File modelModel
    File outputOutput
    Float unknownUnknownThreshold
    String? optionsOptions
  }
  command <<<
    rna_cd-classify \
      ~{optionsOptions} \
      ~{if defined(chunksizeChunksize) then ("--chunksize " +  '"' + chunksizeChunksize + '"') else ""} \
      ~{if defined(contigContig) then ("--contig " +  '"' + contigContig + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(directoryDirectory) then ("--directory " +  '"' + directoryDirectory + '"') else ""} \
      ~{if defined(listListItems) then ("--list-items " +  '"' + listListItems + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(unknownUnknownThreshold) then ("--unknown-threshold " +  '"' + unknownUnknownThreshold + '"') else ""}
  >>>
}