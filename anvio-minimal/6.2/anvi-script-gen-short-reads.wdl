version 1.0

task AnviScriptGenShortReads {
  input {
    String outputOutputFilePath
    String? configConfigFile
  }
  command <<<
    anvi-script-gen-short-reads \
      ~{configConfigFile} \
      ~{if defined(outputOutputFilePath) then ("--output-file-path " +  '"' + outputOutputFilePath + '"') else ""}
  >>>
}