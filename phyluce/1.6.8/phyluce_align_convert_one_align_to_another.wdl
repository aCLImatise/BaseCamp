version 1.0

task PhyluceAlignConvertOneAlignToAnother {
  input {
    String? alignments
    String? output_directory_hold
    String? input_format
    String? output_format
    String? cores
    Boolean? shorten_names
    String? name_conf
    String? verbosity
    String? log_path
  }
  command <<<
    phyluce_align_convert_one_align_to_another \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(output_directory_hold) then ("--output " +  '"' + output_directory_hold + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{true="--shorten-names" false="" shorten_names} \
      ~{if defined(name_conf) then ("--name-conf " +  '"' + name_conf + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    alignments: "The directory containing the alignments to convert."
    output_directory_hold: "An output directory to hold the converted alignments."
    input_format: "The input alignment format"
    output_format: "The input alignment format"
    cores: "The number of compute cores to use"
    shorten_names: "Convert names to a 6 or 7 character representation"
    name_conf: "A config-formatted file containing full-name:shortname mappings"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
}