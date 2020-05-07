version 1.0

task CutUpFasta.py {
  input {
    String chunkChunkSize
    String overlapOverlapSize
    Boolean mergeMergeLast
    String bedBedFile
    String? contigsContigs
  }
  command <<<
    cut_up_fasta.py \
      ~{contigsContigs} \
      ~{if defined(chunkChunkSize) then ("--chunk_size " +  '"' + chunkChunkSize + '"') else ""} \
      ~{if defined(overlapOverlapSize) then ("--overlap_size " +  '"' + overlapOverlapSize + '"') else ""} \
      ~{true="--merge_last" false="" mergeMergeLast} \
      ~{if defined(bedBedFile) then ("--bedfile " +  '"' + bedBedFile + '"') else ""}
  >>>
}