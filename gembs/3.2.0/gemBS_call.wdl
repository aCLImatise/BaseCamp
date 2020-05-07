version 1.0

task GemBSCall {
  input {
    String conversionConversion
    String referenceReferenceBias
    Boolean concatConcatOnly
    Boolean noNoMerge
    String poolPool
    Boolean listListPools
    Boolean dryDryRun
    String jsonJson
    Boolean ignoreIgnoreDb
    Boolean ignoreIgnoreDep
  }
  command <<<
    gemBS call \
      ~{if defined(conversionConversion) then ("--conversion " +  '"' + conversionConversion + '"') else ""} \
      ~{if defined(referenceReferenceBias) then ("--reference-bias " +  '"' + referenceReferenceBias + '"') else ""} \
      ~{true="--concat-only" false="" concatConcatOnly} \
      ~{true="--no-merge" false="" noNoMerge} \
      ~{if defined(poolPool) then ("--pool " +  '"' + poolPool + '"') else ""} \
      ~{true="--list-pools" false="" listListPools} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{if defined(jsonJson) then ("--json " +  '"' + jsonJson + '"') else ""} \
      ~{true="--ignore-db" false="" ignoreIgnoreDb} \
      ~{true="--ignore-dep" false="" ignoreIgnoreDep}
  >>>
}