version 1.0

task BarcodeSplitter {
  input {
    File bcBcFile
    Array[String]+ idxIdxRead
    String mismatchesMismatches
    Boolean barcodesBarcodesAtEnd
    String prefixPrefix
    String suffixSuffix
    Boolean galaxyGalaxy
    Boolean noNoSanitize
    Boolean verboseVerbose
    Boolean gzipGzipOut
    Boolean splitSplitAll
    String formatFormat
    Boolean gzipGzipIn
    File? fileFile
  }
  command <<<
    barcode_splitter \
      ~{fileFile} \
      ~{if defined(bcBcFile) then ("--bcfile " +  '"' + bcBcFile + '"') else ""} \
      ~{if defined(idxIdxRead) then ("--idxread " +  '"' + idxIdxRead + '"') else ""} \
      ~{if defined(mismatchesMismatches) then ("--mismatches " +  '"' + mismatchesMismatches + '"') else ""} \
      ~{true="--barcodes_at_end" false="" barcodesBarcodesAtEnd} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{true="--galaxy" false="" galaxyGalaxy} \
      ~{true="--nosanitize" false="" noNoSanitize} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--gzipout" false="" gzipGzipOut} \
      ~{true="--split_all" false="" splitSplitAll} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--gzipin" false="" gzipGzipIn}
  >>>
}