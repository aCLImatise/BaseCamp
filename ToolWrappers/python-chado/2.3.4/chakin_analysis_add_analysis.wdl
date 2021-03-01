version 1.0

task ChakinAnalysisAddAnalysis {
  input {
    String? algorithm
    String? source_version
    String? source_uri
    String? description
    String? date_executed
    String source_name
  }
  command <<<
    chakin analysis add_analysis \
      ~{source_name} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(source_version) then ("--sourceversion " +  '"' + source_version + '"') else ""} \
      ~{if defined(source_uri) then ("--sourceuri " +  '"' + source_uri + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(date_executed) then ("--date_executed " +  '"' + date_executed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0"
  }
  parameter_meta {
    algorithm: "analysis algorithm"
    source_version: "analysis sourceversion"
    source_uri: "analysis sourceuri"
    description: "analysis description"
    date_executed: "analysis date_executed (yyyy-mm-dd)"
    source_name: "Create an analysis"
  }
  output {
    File out_stdout = stdout()
  }
}