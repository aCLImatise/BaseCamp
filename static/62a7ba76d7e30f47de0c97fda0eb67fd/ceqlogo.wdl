version 1.0

task Ceqlogo {
  input {
    File? loads_motif_option
    Int? number_samples_i
    String? shift_m_i
    Boolean? reverse_complement_motifm
    Int? pseudocounts_loaded_motifs
    Boolean? prefentially_lookup_motifs
    File? output_file_path
    String? format_output_eps
    Int? height_output_logo
    Int? width_output_logo
    String? label_for_title
    String? descriptive_fine_print
    String? label_for_xaxis
    String? label_yaxis_default
    Int? number_bits_tic
    Int? fraction_error_show
    Boolean? turn_small_correction
    Boolean? turn_bar_ends
    Boolean? turn_error_bars
    Boolean? turn_outlining_characters
    Boolean? turn_boxing_characters
    Boolean? turn_numbering_xaxis
    Boolean? _turn_yaxis
  }
  command <<<
    ceqlogo \
      ~{if defined(loads_motif_option) then ("-m " +  '"' + loads_motif_option + '"') else ""} \
      ~{if defined(number_samples_i) then ("-n " +  '"' + number_samples_i + '"') else ""} \
      ~{if defined(shift_m_i) then ("-s " +  '"' + shift_m_i + '"') else ""} \
      ~{if (reverse_complement_motifm) then "-r" else ""} \
      ~{if defined(pseudocounts_loaded_motifs) then ("-p " +  '"' + pseudocounts_loaded_motifs + '"') else ""} \
      ~{if (prefentially_lookup_motifs) then "-l" else ""} \
      ~{if defined(output_file_path) then ("-o " +  '"' + output_file_path + '"') else ""} \
      ~{if defined(format_output_eps) then ("-f " +  '"' + format_output_eps + '"') else ""} \
      ~{if defined(height_output_logo) then ("-h " +  '"' + height_output_logo + '"') else ""} \
      ~{if defined(width_output_logo) then ("-w " +  '"' + width_output_logo + '"') else ""} \
      ~{if defined(label_for_title) then ("-t " +  '"' + label_for_title + '"') else ""} \
      ~{if defined(descriptive_fine_print) then ("-d " +  '"' + descriptive_fine_print + '"') else ""} \
      ~{if defined(label_for_xaxis) then ("-x " +  '"' + label_for_xaxis + '"') else ""} \
      ~{if defined(label_yaxis_default) then ("-y " +  '"' + label_yaxis_default + '"') else ""} \
      ~{if defined(number_bits_tic) then ("-c " +  '"' + number_bits_tic + '"') else ""} \
      ~{if defined(fraction_error_show) then ("-e " +  '"' + fraction_error_show + '"') else ""} \
      ~{if (turn_small_correction) then "-S" else ""} \
      ~{if (turn_bar_ends) then "-B" else ""} \
      ~{if (turn_error_bars) then "-E" else ""} \
      ~{if (turn_outlining_characters) then "-O" else ""} \
      ~{if (turn_boxing_characters) then "-X" else ""} \
      ~{if (turn_numbering_xaxis) then "-N" else ""} \
      ~{if (_turn_yaxis) then "-Y" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    loads_motif_option: "Loads a motif from the file specified by the\\nprevious -i option. The motif ID or position\\ncan be used."
    number_samples_i: "Number of samples for previously loaded motif\\n(-m or -i)."
    shift_m_i: "Shift for previously loaded motif (-m or -i)."
    reverse_complement_motifm: "Reverse complement previously loaded motif\\n(-m or -i)."
    pseudocounts_loaded_motifs: "Pseudocounts for loaded motifs; default: 0."
    prefentially_lookup_motifs: "Prefentially lookup motifs by position;\\ndefault: prefer the ID."
    output_file_path: "Output file path. Default is stdout."
    format_output_eps: "Format of output (EPS, PNG); default: EPS"
    height_output_logo: "Height of output logo in cm (real # > 0)."
    width_output_logo: "Width of output logo in cm (real # > 0)."
    label_for_title: "Label for title."
    descriptive_fine_print: "Descriptive fine print."
    label_for_xaxis: "Label for x-axis."
    label_yaxis_default: "Label for y-axis; default: \\\"bits\\\"."
    number_bits_tic: "Number of bits between tic marks."
    fraction_error_show: "Fraction of error bar to show (real # > 0)."
    turn_small_correction: "...................   Turn on small sample correction."
    turn_bar_ends: "...................   Turn on bar ends."
    turn_error_bars: "...................   Turn on error bars."
    turn_outlining_characters: "...................   Turn on outlining of characters."
    turn_boxing_characters: "...................   Turn on boxing of characters"
    turn_numbering_xaxis: "...................   Turn off numbering of x-axis."
    _turn_yaxis: "...................   Turn off y-axis"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
  }
}