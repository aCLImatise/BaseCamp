version 1.0

task CentrifugeEvaluate.py {
  input {
    String indexIndexBaseForRead
    String numNumFragment
    Boolean pairedPaired
    String errorErrorRate
    String rankRankList
    String programProgramList
    Boolean runtimeRuntimeOnly
    Boolean noNoSql
    Boolean verboseVerbose
    Boolean debugDebug
    String? indexIndexBase
  }
  command <<<
    centrifuge_evaluate.py \
      ~{indexIndexBase} \
      ~{if defined(indexIndexBaseForRead) then ("--index-base-for-read " +  '"' + indexIndexBaseForRead + '"') else ""} \
      ~{if defined(numNumFragment) then ("--num-fragment " +  '"' + numNumFragment + '"') else ""} \
      ~{true="--paired" false="" pairedPaired} \
      ~{if defined(errorErrorRate) then ("--error-rate " +  '"' + errorErrorRate + '"') else ""} \
      ~{if defined(rankRankList) then ("--rank-list " +  '"' + rankRankList + '"') else ""} \
      ~{if defined(programProgramList) then ("--program-list " +  '"' + programProgramList + '"') else ""} \
      ~{true="--runtime-only" false="" runtimeRuntimeOnly} \
      ~{true="--no-sql" false="" noNoSql} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug}
  >>>
}