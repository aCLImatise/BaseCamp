version 1.0

task BoltVcfFilter {
  input {
    String fileFilePath
    Int maxlengthMaxlength
    Int minlengthMinlength
    Boolean onlyOnlySv
    String outputOutput
    String? genieGenie
    String? vcfVcf
    String? filterFilter
    String? flagsFlags
  }
  command <<<
    bolt vcf filter \
      ~{genieGenie} \
      ~{if defined(fileFilePath) then ("--filepath " +  '"' + fileFilePath + '"') else ""} \
      ~{if defined(maxlengthMaxlength) then ("--maxlength " +  '"' + maxlengthMaxlength + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("--minlength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{true="--onlysv" false="" onlyOnlySv} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{vcfVcf} \
      ~{filterFilter} \
      ~{flagsFlags}
  >>>
}