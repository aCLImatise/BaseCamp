version 1.0

task Sibelia {
  input {
    Boolean orOr
    File kK
    String? sibelSibelIA
  }
  command <<<
    Sibelia \
      ~{sibelSibelIA} \
      ~{true="-- OR" false="" orOr} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""}
  >>>
}