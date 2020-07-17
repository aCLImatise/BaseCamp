version 1.0

task Analyze {
  input {
    Boolean? report_wrong_default
    Boolean? report_right_patterns
    Boolean? report_unclassified_patterns
    Boolean? same_w_r
    Boolean? report_confusion_class
    Boolean? show_statistic_information
    Boolean? show_class_information
    Boolean? show_confusion_matrix
    Boolean? _verbous_mode
    String? select_error_function
    Float? lower_bound_level
    Float? upper_bound_level
    String? input_result_file
    String? output_file_default
  }
  command <<<
    analyze \
      ~{true="-w" false="" report_wrong_default} \
      ~{true="-r" false="" report_right_patterns} \
      ~{true="-u" false="" report_unclassified_patterns} \
      ~{true="-a" false="" same_w_r} \
      ~{true="-S" false="" report_confusion_class} \
      ~{true="-s" false="" show_statistic_information} \
      ~{true="-c" false="" show_class_information} \
      ~{true="-m" false="" show_confusion_matrix} \
      ~{true="-v" false="" _verbous_mode} \
      ~{if defined(select_error_function) then ("-e " +  '"' + select_error_function + '"') else ""} \
      ~{if defined(lower_bound_level) then ("-l " +  '"' + lower_bound_level + '"') else ""} \
      ~{if defined(upper_bound_level) then ("-h " +  '"' + upper_bound_level + '"') else ""} \
      ~{if defined(input_result_file) then ("-i " +  '"' + input_result_file + '"') else ""} \
      ~{if defined(output_file_default) then ("-o " +  '"' + output_file_default + '"') else ""}
  >>>
  parameter_meta {
    report_wrong_default: ": report wrong classified patterns (default)"
    report_right_patterns: ": report right classified patterns"
    report_unclassified_patterns: ": report unclassified patterns"
    same_w_r: ": same as -w -r -u"
    report_confusion_class: "\"t c\"         : report confusion from class t to c (-1 = noclass)"
    show_statistic_information: ": show statistic information"
    show_class_information: ": show class statistic information"
    show_confusion_matrix: ": show confusion matrix"
    _verbous_mode: ": verbous mode"
    select_error_function: ": select error function  <function> = [402040 | WTA | band] default = 402040"
    lower_bound_level: ": lower bound level (see documentation)  default: 0.4 for 402040 default: 0.0 for WTA default: 0.1 for band"
    upper_bound_level: ": upper bound level (see documentation)  default: 0.6 for 402040 default: 0.0 for WTA default: 0.1 for band"
    input_result_file: ": input result file (default stdin)"
    output_file_default: ": output file (default stdout)"
  }
}