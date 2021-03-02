version 1.0

task PapaaTargenePharmacologyR {
  input {
    String? classifier_results
    String? compound
  }
  command <<<
    papaa_targene_pharmacology_R \
      ~{if defined(classifier_results) then ("--classifier_results " +  '"' + classifier_results + '"') else ""} \
      ~{if defined(compound) then ("--compound " +  '"' + compound + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/papaa:0.1.9--0"
  }
  parameter_meta {
    classifier_results: "Location of classifier"
    compound: "list of compounds"
  }
  output {
    File out_stdout = stdout()
  }
}