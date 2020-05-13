version 1.0

task TripailleDbIndex {
  input {
    String modeMode
    String tableTable
    String indexIndexName
    Int queuesQueues
    String fieldsFields
    String linksLinks
    String tokenizerTokenizer
    String tokenTokenFilters
    Boolean exposedExposed
    String indexIndexUrl
    String jobJobName
    Boolean noNoWait
  }
  command <<<
    tripaille db index \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{if defined(indexIndexName) then ("--index_name " +  '"' + indexIndexName + '"') else ""} \
      ~{if defined(queuesQueues) then ("--queues " +  '"' + queuesQueues + '"') else ""} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""} \
      ~{if defined(linksLinks) then ("--links " +  '"' + linksLinks + '"') else ""} \
      ~{if defined(tokenizerTokenizer) then ("--tokenizer " +  '"' + tokenizerTokenizer + '"') else ""} \
      ~{if defined(tokenTokenFilters) then ("--token_filters " +  '"' + tokenTokenFilters + '"') else ""} \
      ~{true="--exposed" false="" exposedExposed} \
      ~{if defined(indexIndexUrl) then ("--index_url " +  '"' + indexIndexUrl + '"') else ""} \
      ~{if defined(jobJobName) then ("--job_name " +  '"' + jobJobName + '"') else ""} \
      ~{true="--no_wait" false="" noNoWait}
  >>>
}