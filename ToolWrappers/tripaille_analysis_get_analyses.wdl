version 1.0

task TripailleAnalysisGetAnalyses {
  input {
    String? analysis_id
    String? name
    String? program
    String? program_version
    String? algorithm
    String? source_name
    String? source_version
    String? source_uri
    String? date_executed
  }
  command <<<
    tripaille analysis get_analyses \
      ~{if defined(analysis_id) then ("--analysis_id " +  '"' + analysis_id + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(program) then ("--program " +  '"' + program + '"') else ""} \
      ~{if defined(program_version) then ("--programversion " +  '"' + program_version + '"') else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(source_name) then ("--sourcename " +  '"' + source_name + '"') else ""} \
      ~{if defined(source_version) then ("--sourceversion " +  '"' + source_version + '"') else ""} \
      ~{if defined(source_uri) then ("--sourceuri " +  '"' + source_uri + '"') else ""} \
      ~{if defined(date_executed) then ("--date_executed " +  '"' + date_executed + '"') else ""}
  >>>
  parameter_meta {
    analysis_id: "An analysis ID"
    name: "analysis name"
    program: "analysis program"
    program_version: "analysis programversion"
    algorithm: "analysis algorithm"
    source_name: "analysis sourcename"
    source_version: "analysis sourceversion"
    source_uri: "analysis sourceuri"
    date_executed: "analysis date_executed (yyyy-mm-dd)"
  }
  output {
    File out_stdout = stdout()
  }
}