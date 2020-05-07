version 1.0

task Gof3r {
  input {
    Boolean manManPage
    Boolean writeWriteIni
    String? cpCp
    String? getGet
    String? putPut
    String? rmRm
  }
  command <<<
    gof3r \
      ~{cpCp} \
      ~{true="--manpage" false="" manManPage} \
      ~{true="--writeini" false="" writeWriteIni} \
      ~{getGet} \
      ~{putPut} \
      ~{rmRm}
  >>>
}