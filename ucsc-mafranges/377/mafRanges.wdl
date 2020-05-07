version 1.0

task MafRanges {
  input {
    String otherOtherDb
    Boolean notNotAllOGap
  }
  command <<<
    mafRanges \
      ~{if defined(otherOtherDb) then ("-otherDb " +  '"' + otherOtherDb + '"') else ""} \
      ~{true="-notAllOGap" false="" notNotAllOGap}
  >>>
}