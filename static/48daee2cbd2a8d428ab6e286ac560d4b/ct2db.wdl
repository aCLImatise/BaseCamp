version 1.0

task Ct2db {
  input {
    Boolean removeRemovePk
    Boolean convertConvertToRna
    Boolean verboseVerbose
  }
  command <<<
    ct2db \
      ~{true="--removePK" false="" removeRemovePk} \
      ~{true="--convertToRNA" false="" convertConvertToRna} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}