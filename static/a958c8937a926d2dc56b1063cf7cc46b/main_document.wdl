version 1.0

task MainDocument.sh {
  input {
    String? outputOutputDir
    String? scriptScriptPath
    String? runRunInfo
  }
  command <<<
    main_document.sh \
      ~{outputOutputDir} \
      ~{scriptScriptPath} \
      ~{runRunInfo}
  >>>
}