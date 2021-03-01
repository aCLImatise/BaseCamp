version 1.0

task ChakinAnalysisGetAnalyses {
  input {
    Int? analysis_id
    String? name
    String? program
    String? program_version
    String? algorithm
    String? source_name
    String? source_version
    String? source_uri
    String? description
  }
  command <<<
    chakin analysis get_analyses \
      ~{if defined(analysis_id) then ("--analysis_id " +  '"' + analysis_id + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(program) then ("--program " +  '"' + program + '"') else ""} \
      ~{if defined(program_version) then ("--programversion " +  '"' + program_version + '"') else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(source_name) then ("--sourcename " +  '"' + source_name + '"') else ""} \
      ~{if defined(source_version) then ("--sourceversion " +  '"' + source_version + '"') else ""} \
      ~{if defined(source_uri) then ("--sourceuri " +  '"' + source_uri + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    analysis_id: "analysis_id filter"
    name: "analysis name filter"
    program: "analysis program filter"
    program_version: "analysis programversion filter"
    algorithm: "analysis algorithm filter"
    source_name: "analysis sourcename filter"
    source_version: "analysis sourceversion filter"
    source_uri: "analysis sourceuri filter"
    description: "analysis description"
  }
  output {
    File out_stdout = stdout()
  }
}