version 1.0

task TripailleAnalysisLoadBlast {
  input {
    String blastBlastExt
    String blastBlastDb
    String blastBlastDbId
    String blastBlastParameters
    String queryQueryRe
    String queryQueryType
    Boolean queryQueryUniqueName
    Boolean isIsConcat
    Boolean searchSearchKeywords
    String noNoParsed
    Boolean noNoWait
    String algorithmAlgorithm
    String sourceSourceVersion
    String sourceSourceUri
    String descriptionDescription
    String dateDateExecuted
  }
  command <<<
    tripaille analysis load_blast \
      ~{if defined(blastBlastExt) then ("--blast_ext " +  '"' + blastBlastExt + '"') else ""} \
      ~{if defined(blastBlastDb) then ("--blastdb " +  '"' + blastBlastDb + '"') else ""} \
      ~{if defined(blastBlastDbId) then ("--blastdb_id " +  '"' + blastBlastDbId + '"') else ""} \
      ~{if defined(blastBlastParameters) then ("--blast_parameters " +  '"' + blastBlastParameters + '"') else ""} \
      ~{if defined(queryQueryRe) then ("--query_re " +  '"' + queryQueryRe + '"') else ""} \
      ~{if defined(queryQueryType) then ("--query_type " +  '"' + queryQueryType + '"') else ""} \
      ~{true="--query_uniquename" false="" queryQueryUniqueName} \
      ~{true="--is_concat" false="" isIsConcat} \
      ~{true="--search_keywords" false="" searchSearchKeywords} \
      ~{if defined(noNoParsed) then ("--no_parsed " +  '"' + noNoParsed + '"') else ""} \
      ~{true="--no_wait" false="" noNoWait} \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(sourceSourceVersion) then ("--sourceversion " +  '"' + sourceSourceVersion + '"') else ""} \
      ~{if defined(sourceSourceUri) then ("--sourceuri " +  '"' + sourceSourceUri + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(dateDateExecuted) then ("--date_executed " +  '"' + dateDateExecuted + '"') else ""}
  >>>
}