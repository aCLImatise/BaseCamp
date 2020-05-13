version 1.0

task ProcessRadtags {
  input {
    Boolean inlineInlineNull
    Boolean indexIndexNull
    Boolean nullNullIndex
    Boolean inlineInlineInline
    Boolean indexIndexIndex
    Boolean inlineInlineIndex
    Boolean indexIndexInline
    Boolean bestBestRad
    String adapterAdapter1
    String adapterAdapter2
    String adapterAdapterMm
    Boolean retainRetainHeader
    Boolean mergeMerge
    Boolean filterFilterIllumina
    Boolean disableDisableRadCheck
    String lenLenLimit
    Boolean barcodeBarcodeDist1
    Boolean barcodeBarcodeDist2
  }
  command <<<
    process_radtags \
      ~{true="--inline-null" false="" inlineInlineNull} \
      ~{true="--index-null" false="" indexIndexNull} \
      ~{true="--null-index" false="" nullNullIndex} \
      ~{true="--inline-inline" false="" inlineInlineInline} \
      ~{true="--index-index" false="" indexIndexIndex} \
      ~{true="--inline-index" false="" inlineInlineIndex} \
      ~{true="--index-inline" false="" indexIndexInline} \
      ~{true="--bestrad" false="" bestBestRad} \
      ~{if defined(adapterAdapter1) then ("--adapter-1 " +  '"' + adapterAdapter1 + '"') else ""} \
      ~{if defined(adapterAdapter2) then ("--adapter-2 " +  '"' + adapterAdapter2 + '"') else ""} \
      ~{if defined(adapterAdapterMm) then ("--adapter-mm " +  '"' + adapterAdapterMm + '"') else ""} \
      ~{true="--retain-header" false="" retainRetainHeader} \
      ~{true="--merge" false="" mergeMerge} \
      ~{true="--filter-illumina" false="" filterFilterIllumina} \
      ~{true="--disable-rad-check" false="" disableDisableRadCheck} \
      ~{if defined(lenLenLimit) then ("--len-limit " +  '"' + lenLenLimit + '"') else ""} \
      ~{true="--barcode-dist-1" false="" barcodeBarcodeDist1} \
      ~{true="--barcode-dist-2" false="" barcodeBarcodeDist2}
  >>>
}