version 1.0

task ConvertCoordinates.pl {
  input {
    Directory? type
    Boolean? number_use_default
    Boolean? min_match
    Boolean? directory
    Boolean? peaks
    Boolean? tags
    Boolean? bed
    Boolean? gtf
    String lift_over_dot_over_dot_chain_file
    String input_file_slash_directory
    String output_file_slash_directory
  }
  command <<<
    convertCoordinates.pl \
      ~{lift_over_dot_over_dot_chain_file} \
      ~{input_file_slash_directory} \
      ~{output_file_slash_directory} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{true="-p" false="" number_use_default} \
      ~{true="-minMatch" false="" min_match} \
      ~{true="-directory" false="" directory} \
      ~{true="-peaks" false="" peaks} \
      ~{true="-tags" false="" tags} \
      ~{true="-bed" false="" bed} \
      ~{true="-gtf" false="" gtf}
  >>>
  parameter_meta {
    type: "(input is a tag directory, peak file, tags file, or BED file, or GTF file)"
    number_use_default: "<#> (Number of CPUs to use, default: 1)"
    min_match: "<#> (minimum % of nucleotides that must match, default: 0.1)"
    directory: "(input is a tag directory, default)"
    peaks: "(input is a peak file)"
    tags: "(input is a tag file)"
    bed: "(input is a bed file)"
    gtf: "(input is a gtf file)"
    lift_over_dot_over_dot_chain_file: ""
    input_file_slash_directory: ""
    output_file_slash_directory: ""
  }
}