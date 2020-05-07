version 1.0

task CsbBuildhmm {
  input {
    String queryQueryId
    String tkTkRoot
    String databaseDatabase
    String tkTkConfig
    String cpuCpu
    Boolean noNoSs
    Boolean noNoPseudo
    Boolean noNoCalibration
    String? queryQuery
  }
  command <<<
    csb-buildhmm \
      ~{queryQuery} \
      ~{if defined(queryQueryId) then ("--query-id " +  '"' + queryQueryId + '"') else ""} \
      ~{if defined(tkTkRoot) then ("--tk-root " +  '"' + tkTkRoot + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(tkTkConfig) then ("--tk-config " +  '"' + tkTkConfig + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="--no-ss" false="" noNoSs} \
      ~{true="--no-pseudo" false="" noNoPseudo} \
      ~{true="--no-calibration" false="" noNoCalibration}
  >>>
}