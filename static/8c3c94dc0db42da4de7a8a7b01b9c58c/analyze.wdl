version 1.0

task Analyze {
  input {
    Boolean? report_wrong_patterns
    Boolean? report_right_patterns
    Boolean? report_unclassified_patterns
    Boolean? same_r_u
    Boolean? report_confusion_class
    Boolean? show_statistic_information
    Boolean? show_class_statistic
    Boolean? show_confusion_matrix
    Boolean? _verbous_mode
    Int? select_error_functionfunction
    Float? lower_bound_level
    Float? upper_bound_level
    File? input_result_file
    File? output_file_default
  }
  command <<<
    analyze \
      ~{if (report_wrong_patterns) then "-w" else ""} \
      ~{if (report_right_patterns) then "-r" else ""} \
      ~{if (report_unclassified_patterns) then "-u" else ""} \
      ~{if (same_r_u) then "-a" else ""} \
      ~{if (report_confusion_class) then "-S" else ""} \
      ~{if (show_statistic_information) then "-s" else ""} \
      ~{if (show_class_statistic) then "-c" else ""} \
      ~{if (show_confusion_matrix) then "-m" else ""} \
      ~{if (_verbous_mode) then "-v" else ""} \
      ~{if defined(select_error_functionfunction) then ("-e " +  '"' + select_error_functionfunction + '"') else ""} \
      ~{if defined(lower_bound_level) then ("-l " +  '"' + lower_bound_level + '"') else ""} \
      ~{if defined(upper_bound_level) then ("-h " +  '"' + upper_bound_level + '"') else ""} \
      ~{if defined(input_result_file) then ("-i " +  '"' + input_result_file + '"') else ""} \
      ~{if defined(output_file_default) then ("-o " +  '"' + output_file_default + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    report_wrong_patterns: ": report wrong classified patterns (default)"
    report_right_patterns: ": report right classified patterns"
    report_unclassified_patterns: ": report unclassified patterns"
    same_r_u: ": same as -w -r -u"
    report_confusion_class: "\\\"t c\\\"         : report confusion from class t to c (-1 = noclass)"
    show_statistic_information: ": show statistic information"
    show_class_statistic: ": show class statistic information"
    show_confusion_matrix: ": show confusion matrix"
    _verbous_mode: ": verbous mode"
    select_error_functionfunction: ": select error function\\n<function> = [402040 | WTA | band]\\ndefault = 402040"
    lower_bound_level: ": lower bound level (see documentation)\\ndefault: 0.4 for 402040\\ndefault: 0.0 for WTA\\ndefault: 0.1 for band"
    upper_bound_level: ": upper bound level (see documentation)\\ndefault: 0.6 for 402040\\ndefault: 0.0 for WTA\\ndefault: 0.1 for band"
    input_result_file: ": input result file (default stdin)"
    output_file_default: ": output file (default stdout)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}