version 1.0

task DxAppWizard {
  input {
    String? json_file
    String? language
    String? template
    String name
  }
  command <<<
    dx-app-wizard \
      ~{name} \
      ~{if defined(json_file) then ("--json-file " +  '"' + json_file + '"') else ""} \
      ~{if defined(language) then ("--language " +  '"' + language + '"') else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""}
  >>>
  parameter_meta {
    json_file: "Use the metadata and IO spec found in the given file"
    language: "Programming language of your app"
    template: "Execution pattern of your app"
    name: "Name of your app"
  }
}