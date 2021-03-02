version 1.0

task Qtofpeakpicker {
  input {
    Boolean? produce_help_message
    Boolean? produces_version_information
    Boolean? arg_input_file
    File? arg_output_file
    Boolean? arg_configuration_file
    Int? resolution
    Int? area
    Int? threshold
    Int? number_of_peaks
    Boolean? arg_peak_apex
    Int? smooth_width
  }
  command <<<
    qtofpeakpicker \
      ~{if (produce_help_message) then "-H" else ""} \
      ~{if (produces_version_information) then "-V" else ""} \
      ~{if (arg_input_file) then "-I" else ""} \
      ~{if (arg_output_file) then "-O" else ""} \
      ~{if (arg_configuration_file) then "-C" else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(area) then ("--area " +  '"' + area + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(number_of_peaks) then ("--numberofpeaks " +  '"' + number_of_peaks + '"') else ""} \
      ~{if (arg_peak_apex) then "-i" else ""} \
      ~{if defined(smooth_width) then ("--smoothwidth " +  '"' + smooth_width + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteowizard:3.0.9992"
  }
  parameter_meta {
    produce_help_message: "[ --help ]               produce help message"
    produces_version_information: "[ --version ]            produces version information"
    arg_input_file: "[ --in ] arg             input file"
    arg_output_file: "[ --out ] arg            output file"
    arg_configuration_file: "[ --config-file ] arg    configuration file"
    resolution: "(=20000)   instrument resolution."
    area: "(=1)             default area, otherwise store intensity (0)."
    threshold: "(=10)       removes peaks less than threshold times smallest\\nintensity in spectrum"
    number_of_peaks: "(=0)    maximum number of peaks per spectrum (0 = no\\nlimit)"
    arg_peak_apex: "[ --widthint ] arg (=2)  peak apex +- integration width"
    smooth_width: "(=1)      smoothing width"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}