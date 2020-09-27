version 1.0

task Img2dcm {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? _inputformat_nput
    Boolean? df
    Boolean? study_from
    Boolean? series_from
    Boolean? ii
    Boolean? dp
    Boolean? de
    Boolean? jf
    Boolean? ka
    Boolean? do_checks
    Boolean? no_checks
    Boolean? i_two
    Boolean? i_one
    Boolean? lone
    Boolean? _key_ey
    Boolean? sc
    Boolean? new_sc
    Boolean? vl_photo
    Boolean? _writedataset_write
    Boolean? _grouplengthremove_always
    Boolean? _lengthundefined_write
    Boolean? _paddingoff_padding
    String img_file_in
    String dcm_file_out
  }
  command <<<
    img2dcm \
      ~{img_file_in} \
      ~{dcm_file_out} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_inputformat_nput) then "-i" else ""} \
      ~{if (df) then "-df" else ""} \
      ~{if (study_from) then "--study-from" else ""} \
      ~{if (series_from) then "--series-from" else ""} \
      ~{if (ii) then "-ii" else ""} \
      ~{if (dp) then "-dp" else ""} \
      ~{if (de) then "-de" else ""} \
      ~{if (jf) then "-jf" else ""} \
      ~{if (ka) then "-ka" else ""} \
      ~{if (do_checks) then "--do-checks" else ""} \
      ~{if (no_checks) then "--no-checks" else ""} \
      ~{if (i_two) then "-i2" else ""} \
      ~{if (i_one) then "-i1" else ""} \
      ~{if (lone) then "-l1" else ""} \
      ~{if (_key_ey) then "-k" else ""} \
      ~{if (sc) then "-sc" else ""} \
      ~{if (new_sc) then "--new-sc" else ""} \
      ~{if (vl_photo) then "--vl-photo" else ""} \
      ~{if (_writedataset_write) then "-F" else ""} \
      ~{if (_grouplengthremove_always) then "-g" else ""} \
      ~{if (_lengthundefined_write) then "-e" else ""} \
      ~{if (_paddingoff_padding) then "-p" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_details: "--verbose              verbose mode, print processing details"
    _debug_information: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config           [f]ilename: string\\nuse config file f for the logger"
    _inputformat_nput: "--input-format         [i]nput file format: string\\nsupported formats: JPEG (default), BMP"
    df: "--dataset-from         [f]ilename: string\\nuse dataset from DICOM file f"
    study_from: "[f]ilename: string\\nread patient/study from DICOM file f"
    series_from: "[f]ilename: string\\nread patient/study/series from DICOM file f"
    ii: "--instance-inc         increase instance number read from DICOM file"
    dp: "--disable-progr        disable support for progressive JPEG"
    de: "--disable-ext          disable support for extended sequential JPEG"
    jf: "--insist-on-jfif       insist on JFIF header"
    ka: "--keep-appn            keep APPn sections (except JFIF)"
    do_checks: "enable attribute validity checking (default)"
    no_checks: "disable attribute validity checking"
    i_two: "--no-type2-insert      do not insert missing type 2 attributes\\n(only with --do-checks)"
    i_one: "--no-type1-invent      do not invent missing type 1 attributes\\n(only with --do-checks)"
    lone: "--no-latin1            keep 7-bit ASCII as standard character set"
    _key_ey: "--key                  [k]ey: gggg,eeee=\\\"str\\\", path or dict. name=\\\"str\\\"\\nadd further attribute"
    sc: "--sec-capture          write Secondary Capture SOP class (default)"
    new_sc: "write new Secondary Capture SOP classes"
    vl_photo: "write Visible Light Photographic SOP class"
    _writedataset_write: "--write-dataset        write data set without file meta information"
    _grouplengthremove_always: "--group-length-remove  always write without group length elements"
    _lengthundefined_write: "--length-undefined     write with undefined lengths"
    _paddingoff_padding: "--padding-off          no padding (implicit if --write-dataset)"
    img_file_in: "image input filename"
    dcm_file_out: "DICOM output filename"
  }
  output {
    File out_stdout = stdout()
  }
}