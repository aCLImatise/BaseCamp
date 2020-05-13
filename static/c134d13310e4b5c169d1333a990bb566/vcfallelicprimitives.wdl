version 1.0

task Vcfallelicprimitives {
  input {
    Boolean useUseMnps
    String tagTagParsed
    String maxMaxLength
    Boolean keepKeepInfo
    Boolean keepKeepGeno
    File? fileFile
  }
  command <<<
    vcfallelicprimitives \
      ~{fileFile} \
      ~{true="--use-mnps" false="" useUseMnps} \
      ~{if defined(tagTagParsed) then ("--tag-parsed " +  '"' + tagTagParsed + '"') else ""} \
      ~{if defined(maxMaxLength) then ("--max-length " +  '"' + maxMaxLength + '"') else ""} \
      ~{true="--keep-info" false="" keepKeepInfo} \
      ~{true="--keep-geno" false="" keepKeepGeno}
  >>>
}