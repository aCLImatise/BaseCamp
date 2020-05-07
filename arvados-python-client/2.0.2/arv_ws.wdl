version 1.0

task ArvWs {
  input {
    String uuidUuid
    String filtersFilters
    String startStartTime
    String idId
    String pollPollInterval
    Boolean noNoPoll
    String pipelinePipeline
    String jobJob
  }
  command <<<
    arv-ws \
      ~{if defined(uuidUuid) then ("--uuid " +  '"' + uuidUuid + '"') else ""} \
      ~{if defined(filtersFilters) then ("--filters " +  '"' + filtersFilters + '"') else ""} \
      ~{if defined(startStartTime) then ("--start-time " +  '"' + startStartTime + '"') else ""} \
      ~{if defined(idId) then ("--id " +  '"' + idId + '"') else ""} \
      ~{if defined(pollPollInterval) then ("--poll-interval " +  '"' + pollPollInterval + '"') else ""} \
      ~{true="--no-poll" false="" noNoPoll} \
      ~{if defined(pipelinePipeline) then ("--pipeline " +  '"' + pipelinePipeline + '"') else ""} \
      ~{if defined(jobJob) then ("--job " +  '"' + jobJob + '"') else ""}
  >>>
}