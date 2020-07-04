version 1.0

task EnasearchRetrieveRunReport {
  input {
    String? accession
    String? fields
    File? file
  }
  command <<<
    enasearch retrieve_run_report \
      ~{if defined(accession) then ("--accession " +  '"' + accession + '"') else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    accession: "Accession id (study accessions (ERP, SRP, DRP, PRJ prefixes), experiment accessions (ERX, SRX, DRX prefixes), sample accessions (ERS, SRS, DRS, SAM prefixes) and run accessions))  [required]"
    fields: "Fields to return (accessible with get_run_fields) [multiple or comma-separated]"
    file: "File to save the report"
  }
}