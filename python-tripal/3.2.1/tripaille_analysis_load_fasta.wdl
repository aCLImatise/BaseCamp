version 1.0

task TripailleAnalysisLoadFasta {
  input {
    String organismOrganism
    Int organismOrganismId
    String analysisAnalysis
    Int analysisAnalysisId
    String sequenceSequenceType
    String reReName
    String reReUniqueName
    String dbDbExtId
    String reReAccession
    String relRelType
    String relRelSubjectRe
    String relRelSubjectType
    String methodMethod
    String matchMatchType
    String jobJobName
    Boolean noNoWait
  }
  command <<<
    tripaille analysis load_fasta \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(organismOrganismId) then ("--organism_id " +  '"' + organismOrganismId + '"') else ""} \
      ~{if defined(analysisAnalysis) then ("--analysis " +  '"' + analysisAnalysis + '"') else ""} \
      ~{if defined(analysisAnalysisId) then ("--analysis_id " +  '"' + analysisAnalysisId + '"') else ""} \
      ~{if defined(sequenceSequenceType) then ("--sequence_type " +  '"' + sequenceSequenceType + '"') else ""} \
      ~{if defined(reReName) then ("--re_name " +  '"' + reReName + '"') else ""} \
      ~{if defined(reReUniqueName) then ("--re_uniquename " +  '"' + reReUniqueName + '"') else ""} \
      ~{if defined(dbDbExtId) then ("--db_ext_id " +  '"' + dbDbExtId + '"') else ""} \
      ~{if defined(reReAccession) then ("--re_accession " +  '"' + reReAccession + '"') else ""} \
      ~{if defined(relRelType) then ("--rel_type " +  '"' + relRelType + '"') else ""} \
      ~{if defined(relRelSubjectRe) then ("--rel_subject_re " +  '"' + relRelSubjectRe + '"') else ""} \
      ~{if defined(relRelSubjectType) then ("--rel_subject_type " +  '"' + relRelSubjectType + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(matchMatchType) then ("--match_type " +  '"' + matchMatchType + '"') else ""} \
      ~{if defined(jobJobName) then ("--job_name " +  '"' + jobJobName + '"') else ""} \
      ~{true="--no_wait" false="" noNoWait}
  >>>
}