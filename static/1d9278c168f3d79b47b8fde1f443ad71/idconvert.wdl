version 1.0

task Idconvert {
  input {
    Boolean? arg_specify_text
    Boolean? o
    Boolean? arg_configuration_file
    Boolean? e
    Boolean? mz_ident_ml
    Boolean? pep_xml
    Boolean? text
    Boolean? display_detailed_information
    File? file_masks
  }
  command <<<
    idconvert \
      ~{file_masks} \
      ~{true="-f" false="" arg_specify_text} \
      ~{true="-o" false="" o} \
      ~{true="-c" false="" arg_configuration_file} \
      ~{true="-e" false="" e} \
      ~{true="--mzIdentML" false="" mz_ident_ml} \
      ~{true="--pepXML" false="" pep_xml} \
      ~{true="--text" false="" text} \
      ~{true="-v" false="" display_detailed_information}
  >>>
  parameter_meta {
    arg_specify_text: "[ --filelist ] arg    : specify text file containing filenames"
    o: "[ --outdir ] arg (=.) : set output directory ('-' for stdout) [.]"
    arg_configuration_file: "[ --config ] arg      : configuration file (optionName=value)"
    e: "[ --ext ] arg         : set extension for output files [mzid|pepXML|txt]"
    mz_ident_ml: ": write mzIdentML format [default]"
    pep_xml: ": write pepXML format"
    text: ": write hierarchical text format"
    display_detailed_information: "[ --verbose ]         : display detailed progress information"
    file_masks: ""
  }
}