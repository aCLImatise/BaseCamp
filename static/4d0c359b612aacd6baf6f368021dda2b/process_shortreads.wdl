version 1.0

task ProcessShortreads {
  input {
    Boolean inlineInlineNull
    Boolean indexIndexNull
    Boolean nullNullIndex
    Boolean inlineInlineInline
    Boolean indexIndexIndex
    Boolean inlineInlineIndex
    Boolean indexIndexInline
    String adapterAdapter1
    String adapterAdapter2
    String adapterAdapterMm
    Boolean retainRetainHeader
    Boolean mergeMerge
    Boolean noNoReadTrimming
    String lenLenLimit
    Boolean filterFilterIllumina
    Boolean barcodeBarcodeDist
    Boolean mateMatePair
    Boolean noNoOverhang
  }
  command <<<
    process_shortreads \
      ~{true="--inline-null" false="" inlineInlineNull} \
      ~{true="--index-null" false="" indexIndexNull} \
      ~{true="--null-index" false="" nullNullIndex} \
      ~{true="--inline-inline" false="" inlineInlineInline} \
      ~{true="--index-index" false="" indexIndexIndex} \
      ~{true="--inline-index" false="" inlineInlineIndex} \
      ~{true="--index-inline" false="" indexIndexInline} \
      ~{if defined(adapterAdapter1) then ("--adapter-1 " +  '"' + adapterAdapter1 + '"') else ""} \
      ~{if defined(adapterAdapter2) then ("--adapter-2 " +  '"' + adapterAdapter2 + '"') else ""} \
      ~{if defined(adapterAdapterMm) then ("--adapter-mm " +  '"' + adapterAdapterMm + '"') else ""} \
      ~{true="--retain-header" false="" retainRetainHeader} \
      ~{true="--merge" false="" mergeMerge} \
      ~{true="--no-read-trimming" false="" noNoReadTrimming} \
      ~{if defined(lenLenLimit) then ("--len-limit " +  '"' + lenLenLimit + '"') else ""} \
      ~{true="--filter-illumina" false="" filterFilterIllumina} \
      ~{true="--barcode-dist" false="" barcodeBarcodeDist} \
      ~{true="--mate-pair" false="" mateMatePair} \
      ~{true="--no-overhang" false="" noNoOverhang}
  >>>
}