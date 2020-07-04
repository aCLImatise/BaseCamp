version 1.0

task SpectrastUpdateiRTs.py {
  input {
    String spectra_st_file
  }
  command <<<
    spectrast_updateiRTs.py \
      ~{spectra_st_file}
  >>>
  parameter_meta {
    spectra_st_file: ""
  }
}