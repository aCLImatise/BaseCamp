version 1.0

task Gdcmpgif {
  input {
    String gdc_mpg_if
    File filename_do_tgif
  }
  command <<<
    _gdcmpgif \
      ~{gdc_mpg_if} \
      ~{filename_do_tgif}
  >>>
  parameter_meta {
    gdc_mpg_if: ""
    filename_do_tgif: ""
  }
  output {
    File out_stdout = stdout()
  }
}