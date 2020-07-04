version 1.0

task Qtofpeakpicker {
  input {
    Boolean? produce_help_message
    Boolean? produces_version_information
    Boolean? arg_input_file
    Boolean? arg_output_file
    Boolean? arg_configuration_file
    String? resolution
    String? area
    String? threshold
    String? number_of_peaks
    Boolean? arg_peak_apex
    String? smooth_width
  }
  command <<<
    qtofpeakpicker \
      ~{true="-H" false="" produce_help_message} \
      ~{true="-V" false="" produces_version_information} \
      ~{true="-I" false="" arg_input_file} \
      ~{true="-O" false="" arg_output_file} \
      ~{true="-C" false="" arg_configuration_file} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(area) then ("--area " +  '"' + area + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(number_of_peaks) then ("--numberofpeaks " +  '"' + number_of_peaks + '"') else ""} \
      ~{true="-i" false="" arg_peak_apex} \
      ~{if defined(smooth_width) then ("--smoothwidth " +  '"' + smooth_width + '"') else ""}
  >>>
  parameter_meta {
    produce_help_message: "[ --help ]               produce help message"
    produces_version_information: "[ --version ]            produces version information"
    arg_input_file: "[ --in ] arg             input file"
    arg_output_file: "[ --out ] arg            output file"
    arg_configuration_file: "[ --config-file ] arg    configuration file"
    resolution: "(=20000)   instrument resolution."
    area: "(=1)             default area, otherwise store intensity (0)."
    threshold: "(=10)       removes peaks less than threshold times smallest  intensity in spectrum"
    number_of_peaks: "(=0)    maximum number of peaks per spectrum (0 = no  limit)"
    arg_peak_apex: "[ --widthint ] arg (=2)  peak apex +- integration width"
    smooth_width: "(=1)      smoothing width"
  }
}