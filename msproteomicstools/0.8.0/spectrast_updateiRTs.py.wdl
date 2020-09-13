version 1.0

task SpectrastUpdateiRTspy {
  input {
    Boolean? _autoalign_calculates
    Boolean? irtmodelsfile__irtmodel
    Boolean? irtpeptidesfile__irtpeptides
    Boolean? timescale_options_minutes
    String spectra_st_file
  }
  command <<<
    spectrast_updateiRTs_py \
      ~{spectra_st_file} \
      ~{if (_autoalign_calculates) then "-a" else ""} \
      ~{if (irtmodelsfile__irtmodel) then "-i" else ""} \
      ~{if (irtpeptidesfile__irtpeptides) then "-p" else ""} \
      ~{if (timescale_options_minutes) then "-t" else ""}
  >>>
  parameter_meta {
    _autoalign_calculates: "--auto-align  Calculates automatically the alignment models based on the internal identifications of the calibration peptides"
    irtmodelsfile__irtmodel: "iRT_models_file    --irtmodel    File with the iRT models"
    irtpeptidesfile__irtpeptides: "iRT_peptides_file    --irtpeptides File containing the peptides and their iRTs to do the linear model alignment."
    timescale_options_minutes: "time-scale            Options: minutes, seconds. Default: seconds."
    spectra_st_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}