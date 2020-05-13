version 1.0

task MultiParallelPickOtus.py {
  input {
    Array[String]+ inputInputFna
    String similaritySimilarity
    String jobJobScriptTemplate
    String databaseDatabase
    String wallWallTime
    String jobJobName
    Boolean verboseVerbose
  }
  command <<<
    multi_parallel_pick_otus.py \
      ~{if defined(inputInputFna) then ("--input_fna " +  '"' + inputInputFna + '"') else ""} \
      ~{if defined(similaritySimilarity) then ("--similarity " +  '"' + similaritySimilarity + '"') else ""} \
      ~{if defined(jobJobScriptTemplate) then ("--job_script_template " +  '"' + jobJobScriptTemplate + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(wallWallTime) then ("--walltime " +  '"' + wallWallTime + '"') else ""} \
      ~{if defined(jobJobName) then ("--job_name " +  '"' + jobJobName + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}