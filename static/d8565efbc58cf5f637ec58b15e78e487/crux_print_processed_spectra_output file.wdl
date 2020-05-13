version 1.0

task CruxPrintProcessedSpectraOutput file {
  input {
    String? ms2Ms2File
    String? outputOutputFile
  }
  command <<<
    crux print-processed-spectra output file \
      ~{ms2Ms2File} \
      ~{outputOutputFile}
  >>>
}