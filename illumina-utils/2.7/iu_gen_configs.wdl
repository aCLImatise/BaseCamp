version 1.0

task IuGenConfigs {
  input {
    String r1R1Prefix
    String r2R2Prefix
    String eEMail
    Directory outputOutputDir
    File? fileFile
  }
  command <<<
    iu-gen-configs \
      ~{fileFile} \
      ~{if defined(r1R1Prefix) then ("--r1-prefix " +  '"' + r1R1Prefix + '"') else ""} \
      ~{if defined(r2R2Prefix) then ("--r2-prefix " +  '"' + r2R2Prefix + '"') else ""} \
      ~{if defined(eEMail) then ("--e-mail " +  '"' + eEMail + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}