version 1.0

task EnasearchRetrieveAnalysisReport {
  input {
    String? accession
    String? fields
    File? file
  }
  command <<<
    enasearch retrieve_analysis_report \
      ~{if defined(accession) then ("--accession " +  '"' + accession + '"') else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    accession: "Accession id (study accessions (ERP, SRP, DRP, PRJ\\nprefixes), experiment accessions (ERX, SRX, DRX prefixes),\\nsample accessions (ERS, SRS, DRS, SAM prefixes) and run\\naccessions))  [required]"
    fields: "Fields to return (accessible with get_analysis_fields)\\n[multiple or comma-separated]"
    file: "File to save the report"
  }
  output {
    File out_stdout = stdout()
  }
}