version 1.0

task SamtoolsTview {
  input {
    String? bamBamTk
    String? tTView
    String? aALnbAm
    String? refRefFastA
  }
  command <<<
    samtools tview \
      ~{bamBamTk} \
      ~{tTView} \
      ~{aALnbAm} \
      ~{refRefFastA}
  >>>
}