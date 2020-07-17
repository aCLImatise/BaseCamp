version 1.0

task Spectrast2tsv.py {
  input {
    String spectra_st_file
  }
  command <<<
    spectrast2tsv.py \
      ~{spectra_st_file}
  >>>
  parameter_meta {
    spectra_st_file: ""
  }
}