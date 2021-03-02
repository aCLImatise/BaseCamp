version 1.0

task SpectrastUpdateiRTspy {
  input {
    Boolean? auto_align
    Boolean? irtmodelsfile__irtmodel
    Boolean? irtpeptidesfile__irtpeptides
    Boolean? timescale_options_minutes
    String spectra_st_file
  }
  command <<<
    spectrast_updateiRTs_py \
      ~{spectra_st_file} \
      ~{if (auto_align) then "--auto-align" else ""} \
      ~{if (irtmodelsfile__irtmodel) then "-i" else ""} \
      ~{if (irtpeptidesfile__irtpeptides) then "-p" else ""} \
      ~{if (timescale_options_minutes) then "-t" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    auto_align: "Calculates automatically the alignment models based on the internal identifications of the calibration peptides"
    irtmodelsfile__irtmodel: "iRT_models_file    --irtmodel    File with the iRT models"
    irtpeptidesfile__irtpeptides: "iRT_peptides_file    --irtpeptides File containing the peptides and their iRTs to do the linear model alignment."
    timescale_options_minutes: "time-scale            Options: minutes, seconds. Default: seconds."
    spectra_st_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}