version 1.0

task Binlorry {
  input {
    String inputInput
    String dataData
    Boolean unorderedUnorderedData
    String outputOutput
    Boolean outOutReport
    Boolean forceForceOutput
    String verbosityVerbosity
    Array[String]+ binBinBy
    Array[String]+ filterFilterBy
    Int minMinLength
    Int maxMaxLength
    String headerHeaderDelimiters
  }
  command <<<
    binlorry \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{true="--unordered_data" false="" unorderedUnorderedData} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--out-report" false="" outOutReport} \
      ~{true="--force-output" false="" forceForceOutput} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(binBinBy) then ("--bin-by " +  '"' + binBinBy + '"') else ""} \
      ~{if defined(filterFilterBy) then ("--filter-by " +  '"' + filterFilterBy + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(maxMaxLength) then ("--max-length " +  '"' + maxMaxLength + '"') else ""} \
      ~{if defined(headerHeaderDelimiters) then ("--header-delimiters " +  '"' + headerHeaderDelimiters + '"') else ""}
  >>>
}