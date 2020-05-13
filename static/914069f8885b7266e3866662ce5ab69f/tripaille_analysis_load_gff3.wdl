version 1.0

task TripailleAnalysisLoadGff3 {
  input {
    String organismOrganism
    Int organismOrganismId
    String analysisAnalysis
    Int analysisAnalysisId
    String importImportMode
    String targetTargetOrganism
    Int targetTargetOrganismId
    String targetTargetType
    Boolean targetTargetCreate
    Int startStartLine
    String landmarkLandmarkType
    String altAltIdAttr
    Boolean createCreateOrganism
    String reReMrna
    String reReProtein
    String jobJobName
    Boolean noNoWait
  }
  command <<<
    tripaille analysis load_gff3 \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(organismOrganismId) then ("--organism_id " +  '"' + organismOrganismId + '"') else ""} \
      ~{if defined(analysisAnalysis) then ("--analysis " +  '"' + analysisAnalysis + '"') else ""} \
      ~{if defined(analysisAnalysisId) then ("--analysis_id " +  '"' + analysisAnalysisId + '"') else ""} \
      ~{if defined(importImportMode) then ("--import_mode " +  '"' + importImportMode + '"') else ""} \
      ~{if defined(targetTargetOrganism) then ("--target_organism " +  '"' + targetTargetOrganism + '"') else ""} \
      ~{if defined(targetTargetOrganismId) then ("--target_organism_id " +  '"' + targetTargetOrganismId + '"') else ""} \
      ~{if defined(targetTargetType) then ("--target_type " +  '"' + targetTargetType + '"') else ""} \
      ~{true="--target_create" false="" targetTargetCreate} \
      ~{if defined(startStartLine) then ("--start_line " +  '"' + startStartLine + '"') else ""} \
      ~{if defined(landmarkLandmarkType) then ("--landmark_type " +  '"' + landmarkLandmarkType + '"') else ""} \
      ~{if defined(altAltIdAttr) then ("--alt_id_attr " +  '"' + altAltIdAttr + '"') else ""} \
      ~{true="--create_organism" false="" createCreateOrganism} \
      ~{if defined(reReMrna) then ("--re_mrna " +  '"' + reReMrna + '"') else ""} \
      ~{if defined(reReProtein) then ("--re_protein " +  '"' + reReProtein + '"') else ""} \
      ~{if defined(jobJobName) then ("--job_name " +  '"' + jobJobName + '"') else ""} \
      ~{true="--no_wait" false="" noNoWait}
  >>>
}