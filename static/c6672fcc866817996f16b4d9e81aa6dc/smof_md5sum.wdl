version 1.0

task SmofMd5sum {
  input {
    Boolean ignoreIgnoreCase
    Boolean eachEachSequence
    Boolean allAllSequences
    Boolean allAllHeaders
    Boolean replaceReplaceHeader
    String? inputInput
  }
  command <<<
    smof md5sum \
      ~{inputInput} \
      ~{true="--ignore-case" false="" ignoreIgnoreCase} \
      ~{true="--each-sequence" false="" eachEachSequence} \
      ~{true="--all-sequences" false="" allAllSequences} \
      ~{true="--all-headers" false="" allAllHeaders} \
      ~{true="--replace-header" false="" replaceReplaceHeader}
  >>>
}