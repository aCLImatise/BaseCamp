version 1.0

task CsbCsfrag {
  input {
    String databaseDatabase
    String shiftsShifts
    String windowWindow
    String topTop
    String cpuCpu
    String verbosityVerbosity
    String outputOutput
    Boolean filteredFilteredMap
    String? queryQuery
  }
  command <<<
    csb-csfrag \
      ~{queryQuery} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(shiftsShifts) then ("--shifts " +  '"' + shiftsShifts + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(topTop) then ("--top " +  '"' + topTop + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--filtered-map" false="" filteredFilteredMap}
  >>>
}