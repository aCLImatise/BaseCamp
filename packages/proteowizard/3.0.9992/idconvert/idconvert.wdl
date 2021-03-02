version 1.0

task Idconvert {
  input {
    Boolean? arg_specify_file
    Directory? o
    Boolean? arg_configuration_file
    Boolean? e
    Boolean? mz_ident_ml
    Boolean? pep_xml
    Boolean? text
    Boolean? display_detailed_information
    String? file_masks
  }
  command <<<
    idconvert \
      ~{file_masks} \
      ~{if (arg_specify_file) then "-f" else ""} \
      ~{if (o) then "-o" else ""} \
      ~{if (arg_configuration_file) then "-c" else ""} \
      ~{if (e) then "-e" else ""} \
      ~{if (mz_ident_ml) then "--mzIdentML" else ""} \
      ~{if (pep_xml) then "--pepXML" else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if (display_detailed_information) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteowizard:3.0.9992"
  }
  parameter_meta {
    arg_specify_file: "[ --filelist ] arg    : specify text file containing filenames"
    o: "[ --outdir ] arg (=.) : set output directory ('-' for stdout) [.]"
    arg_configuration_file: "[ --config ] arg      : configuration file (optionName=value)"
    e: "[ --ext ] arg         : set extension for output files [mzid|pepXML|txt]"
    mz_ident_ml: ": write mzIdentML format [default]"
    pep_xml: ": write pepXML format"
    text: ": write hierarchical text format"
    display_detailed_information: "[ --verbose ]         : display detailed progress information"
    file_masks: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_o = "${in_o}"
  }
}