version 1.0

task SambambaMerge {
  input {
    String nNThreads
    String compressionCompressionLevel
    Boolean headerHeader
    Boolean showShowProgress
    String filterFilter
  }
  command <<<
    sambamba merge \
      ~{if defined(nNThreads) then ("--nthreads " +  '"' + nNThreads + '"') else ""} \
      ~{if defined(compressionCompressionLevel) then ("--compression-level " +  '"' + compressionCompressionLevel + '"') else ""} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--show-progress" false="" showShowProgress} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""}
  >>>
}