version 1.0

task Ceqlogo {
  input {
    String? loads_motif_file
    String? number_samples_previously
    String? shift_previously_loaded
    Boolean? reverse_complement_previously
    String? pseudocounts_loaded_motifs
    Boolean? prefentially_lookup_motifs
    String? output_file_path
    String? format_png_eps
    String? height_output_real
    String? width_output_logo
    String? label_for_title
    String? descriptive_fine_print
    String? label_for_xaxis
    String? label_yaxis_default
    String? number_bits_tic
    String? fraction_show_real
    Boolean? turn_small_sample
    Boolean? turn_bar_ends
    Boolean? turn_error_bars
    Boolean? turn_outlining_characters
    Boolean? turn_boxing_characters
    Boolean? turn_numbering_xaxis
    Boolean? _turn_yaxis
  }
  command <<<
    ceqlogo \
      ~{if defined(loads_motif_file) then ("-m " +  '"' + loads_motif_file + '"') else ""} \
      ~{if defined(number_samples_previously) then ("-n " +  '"' + number_samples_previously + '"') else ""} \
      ~{if defined(shift_previously_loaded) then ("-s " +  '"' + shift_previously_loaded + '"') else ""} \
      ~{true="-r" false="" reverse_complement_previously} \
      ~{if defined(pseudocounts_loaded_motifs) then ("-p " +  '"' + pseudocounts_loaded_motifs + '"') else ""} \
      ~{true="-l" false="" prefentially_lookup_motifs} \
      ~{if defined(output_file_path) then ("-o " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(format_png_eps) then ("-f " +  '"' + format_png_eps + '"') else ""} \
      ~{if defined(height_output_real) then ("-h " +  '"' + height_output_real + '"') else ""} \
      ~{if defined(width_output_logo) then ("-w " +  '"' + width_output_logo + '"') else ""} \
      ~{if defined(label_for_title) then ("-t " +  '"' + label_for_title + '"') else ""} \
      ~{if defined(descriptive_fine_print) then ("-d " +  '"' + descriptive_fine_print + '"') else ""} \
      ~{if defined(label_for_xaxis) then ("-x " +  '"' + label_for_xaxis + '"') else ""} \
      ~{if defined(label_yaxis_default) then ("-y " +  '"' + label_yaxis_default + '"') else ""} \
      ~{if defined(number_bits_tic) then ("-c " +  '"' + number_bits_tic + '"') else ""} \
      ~{if defined(fraction_show_real) then ("-e " +  '"' + fraction_show_real + '"') else ""} \
      ~{true="-S" false="" turn_small_sample} \
      ~{true="-B" false="" turn_bar_ends} \
      ~{true="-E" false="" turn_error_bars} \
      ~{true="-O" false="" turn_outlining_characters} \
      ~{true="-X" false="" turn_boxing_characters} \
      ~{true="-N" false="" turn_numbering_xaxis} \
      ~{true="-Y" false="" _turn_yaxis}
  >>>
  parameter_meta {
    loads_motif_file: "Loads a motif from the file specified by the previous -i option. The motif ID or position can be used."
    number_samples_previously: "Number of samples for previously loaded motif (-m or -i)."
    shift_previously_loaded: "Shift for previously loaded motif (-m or -i)."
    reverse_complement_previously: "Reverse complement previously loaded motif (-m or -i)."
    pseudocounts_loaded_motifs: "Pseudocounts for loaded motifs; default: 0."
    prefentially_lookup_motifs: "Prefentially lookup motifs by position; default: prefer the ID."
    output_file_path: "Output file path. Default is stdout."
    format_png_eps: "Format of output (EPS, PNG); default: EPS"
    height_output_real: "Height of output logo in cm (real # > 0)."
    width_output_logo: "Width of output logo in cm (real # > 0)."
    label_for_title: "Label for title."
    descriptive_fine_print: "Descriptive fine print."
    label_for_xaxis: "Label for x-axis."
    label_yaxis_default: "Label for y-axis; default: \"bits\"."
    number_bits_tic: "Number of bits between tic marks."
    fraction_show_real: "Fraction of error bar to show (real # > 0)."
    turn_small_sample: "...................   Turn on small sample correction."
    turn_bar_ends: "...................   Turn on bar ends."
    turn_error_bars: "...................   Turn on error bars."
    turn_outlining_characters: "...................   Turn on outlining of characters."
    turn_boxing_characters: "...................   Turn on boxing of characters  "
    turn_numbering_xaxis: "...................   Turn off numbering of x-axis."
    _turn_yaxis: "...................   Turn off y-axis "
  }
}