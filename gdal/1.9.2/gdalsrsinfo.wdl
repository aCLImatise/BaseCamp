version 1.0

task Gdalsrsinfo {
  input {
    String srs_def
  }
  command <<<
    gdalsrsinfo \
      ~{srs_def}
  >>>
  parameter_meta {
    srs_def: ""
  }
}