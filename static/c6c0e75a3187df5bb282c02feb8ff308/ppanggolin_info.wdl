version 1.0

task PpanggolinInfo {
  input {
    String pP
    Boolean parametersParameters
    Boolean contentContent
    Boolean statusStatus
  }
  command <<<
    ppanggolin info \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="--parameters" false="" parametersParameters} \
      ~{true="--content" false="" contentContent} \
      ~{true="--status" false="" statusStatus}
  >>>
}