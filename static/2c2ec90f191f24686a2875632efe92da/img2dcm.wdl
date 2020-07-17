version 1.0

task Img2dcm {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
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
    Boolean? i_one
    Boolean? lone
    Boolean? _key_ggggeeee
    Boolean? sc
    Boolean? new_sc
    Boolean? vl_photo
    Boolean? _writedataset_write
    Boolean? _grouplengthremove_always
    Boolean? _lengthundefined_write
    String img_file_in
    String dcm_file_out
  }
  command <<<
    img2dcm \
      ~{img_file_in} \
      ~{dcm_file_out} \
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-i" false="" _inputformat_nput} \
      ~{true="-df" false="" df} \
      ~{true="--study-from" false="" study_from} \
      ~{true="--series-from" false="" series_from} \
      ~{true="-ii" false="" ii} \
      ~{true="-dp" false="" dp} \
      ~{true="-de" false="" de} \
      ~{true="-jf" false="" jf} \
      ~{true="-ka" false="" ka} \
      ~{true="--do-checks" false="" do_checks} \
      ~{true="--no-checks" false="" no_checks} \
      ~{true="-i1" false="" i_one} \
      ~{true="-l1" false="" lone} \
      ~{true="-k" false="" _key_ggggeeee} \
      ~{true="-sc" false="" sc} \
      ~{true="--new-sc" false="" new_sc} \
      ~{true="--vl-photo" false="" vl_photo} \
      ~{true="-F" false="" _writedataset_write} \
      ~{true="-g" false="" _grouplengthremove_always} \
      ~{true="-e" false="" _lengthundefined_write}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose              verbose mode, print processing details"
    _debug_debug: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config           [f]ilename: string use config file f for the logger"
    _inputformat_nput: "--input-format         [i]nput file format: string supported formats: JPEG (default), BMP"
    df: "--dataset-from         [f]ilename: string use dataset from DICOM file f"
    study_from: "[f]ilename: string read patient/study from DICOM file f"
    series_from: "[f]ilename: string read patient/study/series from DICOM file f"
    ii: "--instance-inc         increase instance number read from DICOM file"
    dp: "--disable-progr        disable support for progressive JPEG"
    de: "--disable-ext          disable support for extended sequential JPEG"
    jf: "--insist-on-jfif       insist on JFIF header"
    ka: "--keep-appn            keep APPn sections (except JFIF)"
    do_checks: "enable attribute validity checking (default)"
    no_checks: "disable attribute validity checking"
    i_one: "--no-type1-invent      do not invent missing type 1 attributes (only with --do-checks)"
    lone: "--no-latin1            keep 7-bit ASCII as standard character set"
    _key_ggggeeee: "--key                  [k]ey: gggg,eeee=\"str\", path or dict. name=\"str\" add further attribute"
    sc: "--sec-capture          write Secondary Capture SOP class (default)"
    new_sc: "write new Secondary Capture SOP classes"
    vl_photo: "write Visible Light Photographic SOP class"
    _writedataset_write: "--write-dataset        write data set without file meta information"
    _grouplengthremove_always: "--group-length-remove  always write without group length elements"
    _lengthundefined_write: "--length-undefined     write with undefined lengths"
    img_file_in: "image input filename"
    dcm_file_out: "DICOM output filename"
  }
}