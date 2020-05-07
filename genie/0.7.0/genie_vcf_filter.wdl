version 1.0

task GenieVcfFilter {
  input {
    String fileFilePath
    Int maxlengthMaxlength
    Int minlengthMinlength
    Boolean onlyOnlySv
    String outputOutput
    String? flagsFlags
  }
  command <<<
    genie vcf filter \
      ~{flagsFlags} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""} \
      ~{if defined(maxlengthMaxlength) then ("--maxlength " +  '"' + maxlengthMaxlength + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("--minlength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{true="--onlysv" false="" onlyOnlySv} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}