version 1.0

task DxAppWizard {
  input {
    String jsonJsonFile
    String languageLanguage
    String templateTemplate
    String? nameName
  }
  command <<<
    dx-app-wizard \
      ~{nameName} \
      ~{if defined(jsonJsonFile) then ("--json-file " +  '"' + jsonJsonFile + '"') else ""} \
      ~{if defined(languageLanguage) then ("--language " +  '"' + languageLanguage + '"') else ""} \
      ~{if defined(templateTemplate) then ("--template " +  '"' + templateTemplate + '"') else ""}
  >>>
}