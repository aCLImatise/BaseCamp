version 1.0

task TripailleAnalysisLoadGo {
  input {
    String organismOrganism
    Int organismOrganismId
    String gafGafExt
    String queryQueryType
    String queryQueryMatching
    String methodMethod
    Int nameNameColumn
    String reReName
    Boolean noNoWait
    String algorithmAlgorithm
    String sourceSourceVersion
    String sourceSourceUri
    String descriptionDescription
    String dateDateExecuted
  }
  command <<<
    tripaille analysis load_go \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(organismOrganismId) then ("--organism_id " +  '"' + organismOrganismId + '"') else ""} \
      ~{if defined(gafGafExt) then ("--gaf_ext " +  '"' + gafGafExt + '"') else ""} \
      ~{if defined(queryQueryType) then ("--query_type " +  '"' + queryQueryType + '"') else ""} \
      ~{if defined(queryQueryMatching) then ("--query_matching " +  '"' + queryQueryMatching + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(nameNameColumn) then ("--name_column " +  '"' + nameNameColumn + '"') else ""} \
      ~{if defined(reReName) then ("--re_name " +  '"' + reReName + '"') else ""} \
      ~{true="--no_wait" false="" noNoWait} \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(sourceSourceVersion) then ("--sourceversion " +  '"' + sourceSourceVersion + '"') else ""} \
      ~{if defined(sourceSourceUri) then ("--sourceuri " +  '"' + sourceSourceUri + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(dateDateExecuted) then ("--date_executed " +  '"' + dateDateExecuted + '"') else ""}
  >>>
}