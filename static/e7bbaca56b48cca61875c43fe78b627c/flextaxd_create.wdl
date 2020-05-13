version 1.0

task FlextaxdCreate {
  input {
    Boolean oO
    Boolean dbDb
    Boolean dbDbProgram
    Boolean genomesGenomesPath
    Boolean dbDbName
    Boolean createCreateDb
    Boolean paramsParams
    Boolean testTest
    Boolean pP
    Boolean keepKeep
    Boolean skipSkip
    Boolean logLog
    Boolean verboseVerbose
    Boolean debugDebug
    Boolean supressSupress
  }
  command <<<
    flextaxd-create \
      ~{true="-o" false="" oO} \
      ~{true="-db" false="" dbDb} \
      ~{true="--dbprogram" false="" dbDbProgram} \
      ~{true="--genomes_path" false="" genomesGenomesPath} \
      ~{true="--db_name" false="" dbDbName} \
      ~{true="--create_db" false="" createCreateDb} \
      ~{true="--params" false="" paramsParams} \
      ~{true="--test" false="" testTest} \
      ~{true="-p" false="" pP} \
      ~{true="--keep" false="" keepKeep} \
      ~{true="--skip" false="" skipSkip} \
      ~{true="--log" false="" logLog} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--supress" false="" supressSupress}
  >>>
}