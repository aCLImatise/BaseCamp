version 1.0

task FilterGffValues {
  input {
    String strStrEq
    String strStrIn
    String numNumEq
    String numNumGe
    String numNumLe
    String numNumGt
    String numNumLt
    Boolean progressProgress
  }
  command <<<
    filter-gff values \
      ~{if defined(strStrEq) then ("--str-eq " +  '"' + strStrEq + '"') else ""} \
      ~{if defined(strStrIn) then ("--str-in " +  '"' + strStrIn + '"') else ""} \
      ~{if defined(numNumEq) then ("--num-eq " +  '"' + numNumEq + '"') else ""} \
      ~{if defined(numNumGe) then ("--num-ge " +  '"' + numNumGe + '"') else ""} \
      ~{if defined(numNumLe) then ("--num-le " +  '"' + numNumLe + '"') else ""} \
      ~{if defined(numNumGt) then ("--num-gt " +  '"' + numNumGt + '"') else ""} \
      ~{if defined(numNumLt) then ("--num-lt " +  '"' + numNumLt + '"') else ""} \
      ~{true="--progress" false="" progressProgress}
  >>>
}