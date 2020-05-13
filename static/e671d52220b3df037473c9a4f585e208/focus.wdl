version 1.0

task Focus {
  input {
    String queryQuery
    String outputOutputDirectory
    String kmKmErSize
    String alternateAlternateDirectory
    String outputOutputPrefix
    String threadsThreads
    Boolean listListOutput
    String logLog
  }
  command <<<
    focus \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output_directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(kmKmErSize) then ("--kmer_size " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(alternateAlternateDirectory) then ("--alternate_directory " +  '"' + alternateAlternateDirectory + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--list_output" false="" listListOutput} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""}
  >>>
}