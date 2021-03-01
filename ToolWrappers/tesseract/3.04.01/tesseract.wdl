version 1.0

task Tesseract {
  input {
    File? tess_data_dir
    File? user_words
    File? user_patterns
    String? specify_languages_used
    String? value_set_value
    Int? psm
    Boolean? help_psm
    Boolean? list_langs
    Boolean? print_parameters
    Int treat_image_single
  }
  command <<<
    tesseract \
      ~{treat_image_single} \
      ~{if defined(tess_data_dir) then ("--tessdata-dir " +  '"' + tess_data_dir + '"') else ""} \
      ~{if defined(user_words) then ("--user-words " +  '"' + user_words + '"') else ""} \
      ~{if defined(user_patterns) then ("--user-patterns " +  '"' + user_patterns + '"') else ""} \
      ~{if defined(specify_languages_used) then ("-l " +  '"' + specify_languages_used + '"') else ""} \
      ~{if defined(value_set_value) then ("-c " +  '"' + value_set_value + '"') else ""} \
      ~{if defined(psm) then ("-psm " +  '"' + psm + '"') else ""} \
      ~{if (help_psm) then "--help-psm" else ""} \
      ~{if (list_langs) then "--list-langs" else ""} \
      ~{if (print_parameters) then "--print-parameters" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tess_data_dir: "Specify the location of tessdata path."
    user_words: "Specify the location of user words file."
    user_patterns: "Specify the location of user patterns file."
    specify_languages_used: "[+LANG]        Specify language(s) used for OCR."
    value_set_value: "=VALUE          Set value for config variables.\\nMultiple -c arguments are allowed."
    psm: "Specify page segmentation mode."
    help_psm: "Show page segmentation modes."
    list_langs: "List available languages for tesseract engine."
    print_parameters: "Print tesseract parameters to stdout."
    treat_image_single: "Treat the image as a single character."
  }
  output {
    File out_stdout = stdout()
  }
}