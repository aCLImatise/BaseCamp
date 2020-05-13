version 1.0

task IndexGff {
  input {
    String indexIndex
    Boolean compressCompressId
  }
  command <<<
    index_gff \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{true="--compress-id" false="" compressCompressId}
  >>>
}