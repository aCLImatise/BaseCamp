version 1.0

task EnasearchRetrieveAnalysisReport {
  input {
    String accessionAccession
    String fieldsFields
    File fileFile
  }
  command <<<
    enasearch retrieve_analysis_report \
      ~{if defined(accessionAccession) then ("--accession " +  '"' + accessionAccession + '"') else ""} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""}
  >>>
}