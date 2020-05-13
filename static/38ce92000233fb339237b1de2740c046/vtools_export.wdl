version 1.0

task VtoolsExport {
  input {
    Boolean oO
    Boolean sS
    String formatFormat
    String buildBuild
    Boolean headerHeader
    String jobsJobs
    Boolean vV
    String? tableTable
  }
  command <<<
    vtools export \
      ~{tableTable} \
      ~{true="-o" false="" oO} \
      ~{true="-s" false="" sS} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(buildBuild) then ("--build " +  '"' + buildBuild + '"') else ""} \
      ~{true="--header" false="" headerHeader} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}