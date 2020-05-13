version 1.0

task VtoolsUpdate {
  input {
    Boolean vV
    Array[String]+ fromFromFile
    String buildBuild
    String formatFormat
    String jobsJobs
    Boolean sampleSampleName
    Boolean setSet
    Boolean fromFromStat
    Boolean sS
    Boolean genotypesGenotypes
    String? tableTable
  }
  command <<<
    vtools update \
      ~{tableTable} \
      ~{true="-v" false="" vV} \
      ~{if defined(fromFromFile) then ("--from_file " +  '"' + fromFromFile + '"') else ""} \
      ~{if defined(buildBuild) then ("--build " +  '"' + buildBuild + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{true="--sample_name" false="" sampleSampleName} \
      ~{true="--set" false="" setSet} \
      ~{true="--from_stat" false="" fromFromStat} \
      ~{true="-s" false="" sS} \
      ~{true="--genotypes" false="" genotypesGenotypes}
  >>>
}