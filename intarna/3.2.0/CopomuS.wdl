version 1.0

task CopomuS.py {
  input {
    String queryQuery
    String targetTarget
    String qidxpos0Qidxpos0
    String tidxpos0Tidxpos0
    String measureMeasure
    String candidateCandidateSelection
    String candidateCandidateFilter
    String generatorGenerator
    String mutationMutationEncoding
    Boolean oO
    String delimiterDelimiter
    String parameterParameterFile
    String threadsThreads
  }
  command <<<
    CopomuS.py \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(qidxpos0Qidxpos0) then ("--qIdxPos0 " +  '"' + qidxpos0Qidxpos0 + '"') else ""} \
      ~{if defined(tidxpos0Tidxpos0) then ("--tIdxPos0 " +  '"' + tidxpos0Tidxpos0 + '"') else ""} \
      ~{if defined(measureMeasure) then ("--measure " +  '"' + measureMeasure + '"') else ""} \
      ~{if defined(candidateCandidateSelection) then ("--candidateSelection " +  '"' + candidateCandidateSelection + '"') else ""} \
      ~{if defined(candidateCandidateFilter) then ("--candidateFilter " +  '"' + candidateCandidateFilter + '"') else ""} \
      ~{if defined(generatorGenerator) then ("--generator " +  '"' + generatorGenerator + '"') else ""} \
      ~{if defined(mutationMutationEncoding) then ("--mutationEncoding " +  '"' + mutationMutationEncoding + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{if defined(parameterParameterFile) then ("--parameterFile " +  '"' + parameterParameterFile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}