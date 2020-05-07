version 1.0

task CruxPrintProcessedSpectraMs2 file {
  input {
    String? outputOutputFile
  }
  command <<<
    crux print-processed-spectra ms2 file \
      ~{outputOutputFile}
  >>>
}