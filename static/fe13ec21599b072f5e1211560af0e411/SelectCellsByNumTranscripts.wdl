version 1.0

task SelectCellsByNumTranscripts {
  input {
    String mM
    String vV
  }
  command <<<
    SelectCellsByNumTranscripts \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}