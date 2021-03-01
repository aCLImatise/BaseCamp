version 1.0

task Dxappwizard {
  input {
    File? json_file
    String? language
    String? template
    String name
  }
  command <<<
    dx_app_wizard \
      ~{name} \
      ~{if defined(json_file) then ("--json-file " +  '"' + json_file + '"') else ""} \
      ~{if defined(language) then ("--language " +  '"' + language + '"') else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    json_file: "Use the metadata and IO spec found in the given file"
    language: "Programming language of your app"
    template: "Execution pattern of your app\\n"
    name: "Name of your app"
  }
  output {
    File out_stdout = stdout()
  }
}