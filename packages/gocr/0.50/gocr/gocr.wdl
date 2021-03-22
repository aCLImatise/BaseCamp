version 1.0

task Gocr {
  input {
    File? output_file_redirection
    File? logging_file_redirection
    String? progress_output_see
    File? database_path_including
    Int? output_format_iso
    Int? threshold_grey_level
    Int? remove_small_clusters
    Int? _spacewidthdots_autodetect
    Int? verbose_see_manual
    String? list_chars_debugging
    Int? char_filter_hexdigits
    Int? operation_modes_bitpattern
    Int? value_certainty_default
    String? output_string_unrecognized
  }
  command <<<
    gocr \
      ~{if defined(output_file_redirection) then ("-o " +  '"' + output_file_redirection + '"') else ""} \
      ~{if defined(logging_file_redirection) then ("-e " +  '"' + logging_file_redirection + '"') else ""} \
      ~{if defined(progress_output_see) then ("-x " +  '"' + progress_output_see + '"') else ""} \
      ~{if defined(database_path_including) then ("-p " +  '"' + database_path_including + '"') else ""} \
      ~{if defined(output_format_iso) then ("-f " +  '"' + output_format_iso + '"') else ""} \
      ~{if defined(threshold_grey_level) then ("-l " +  '"' + threshold_grey_level + '"') else ""} \
      ~{if defined(remove_small_clusters) then ("-d " +  '"' + remove_small_clusters + '"') else ""} \
      ~{if defined(_spacewidthdots_autodetect) then ("-s " +  '"' + _spacewidthdots_autodetect + '"') else ""} \
      ~{if defined(verbose_see_manual) then ("-v " +  '"' + verbose_see_manual + '"') else ""} \
      ~{if defined(list_chars_debugging) then ("-c " +  '"' + list_chars_debugging + '"') else ""} \
      ~{if defined(char_filter_hexdigits) then ("-C " +  '"' + char_filter_hexdigits + '"') else ""} \
      ~{if defined(operation_modes_bitpattern) then ("-m " +  '"' + operation_modes_bitpattern + '"') else ""} \
      ~{if defined(value_certainty_default) then ("-a " +  '"' + value_certainty_default + '"') else ""} \
      ~{if defined(output_string_unrecognized) then ("-u " +  '"' + output_string_unrecognized + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_redirection: "- output file  (redirection of stdout)"
    logging_file_redirection: "- logging file (redirection of stderr)"
    progress_output_see: "- progress output to fifo (see manual)"
    database_path_including: "- database path including final slash (default is ./db/)"
    output_format_iso: "- output format (ISO8859_1 TeX HTML XML UTF8 ASCII)"
    threshold_grey_level: "- threshold grey level 0<160<=255 (0 = autodetect)"
    remove_small_clusters: "- dust_size (remove small clusters, -1 = autodetect)"
    _spacewidthdots_autodetect: "- spacewidth/dots (0 = autodetect)"
    verbose_see_manual: "- verbose (see manual page)"
    list_chars_debugging: "- list of chars (debugging, see manual)"
    char_filter_hexdigits: "- char filter (ex. hexdigits: 0-9A-Fx, only ASCII)"
    operation_modes_bitpattern: "- operation modes (bitpattern, see manual)"
    value_certainty_default: "- value of certainty (in percent, 0..100, default=95)"
    output_string_unrecognized: "- output this string for every unrecognized character"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_redirection = "${in_output_file_redirection}"
  }
}