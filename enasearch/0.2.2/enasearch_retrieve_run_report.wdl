version 1.0

task EnasearchRetrieveRunReport {
  input {
    String accessionAccession
    String fieldsFields
    File fileFile
  }
  command <<<
    enasearch retrieve_run_report \
      ~{if defined(accessionAccession) then ("--accession " +  '"' + accessionAccession + '"') else ""} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""}
  >>>
}