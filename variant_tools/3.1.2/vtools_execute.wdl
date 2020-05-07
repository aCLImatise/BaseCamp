version 1.0

task VtoolsExecute {
  input {
    String jobsJobs
    String delimiterDelimiter
    Boolean vV
    String? specSpecFile
    String? pipelinesPipelines
  }
  command <<<
    vtools execute \
      ~{specSpecFile} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{pipelinesPipelines}
  >>>
}