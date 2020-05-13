version 1.0

task MsaDiff {
  input {
    String alphabetAlphabet
    Boolean ignoreIgnoreBaseId
    Boolean ignoreIgnoreGapType
  }
  command <<<
    msa_diff \
      ~{if defined(alphabetAlphabet) then ("--alphabet " +  '"' + alphabetAlphabet + '"') else ""} \
      ~{true="--ignore-base-id" false="" ignoreIgnoreBaseId} \
      ~{true="--ignore-gap-type" false="" ignoreIgnoreGapType}
  >>>
}