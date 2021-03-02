version 1.0

task ConvertCoordinatespl {
  input {
    Directory? type
    Boolean? number_cpus_use
    Boolean? min_match
    Boolean? directory
    Boolean? peaks
    Boolean? tags
    Boolean? bed
    Boolean? gtf
    File lift_over_dot_over_dot_chain_file
    File input_file_slash_directory
    File output_file_slash_directory
  }
  command <<<
    convertCoordinates_pl \
      ~{lift_over_dot_over_dot_chain_file} \
      ~{input_file_slash_directory} \
      ~{output_file_slash_directory} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{if (number_cpus_use) then "-p" else ""} \
      ~{if (min_match) then "-minMatch" else ""} \
      ~{if (directory) then "-directory" else ""} \
      ~{if (peaks) then "-peaks" else ""} \
      ~{if (tags) then "-tags" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (gtf) then "-gtf" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    type: "(input is a tag directory, peak file, tags file, or BED file, or GTF file)"
    number_cpus_use: "<#> (Number of CPUs to use, default: 1)"
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
  output {
    File out_stdout = stdout()
    File out_output_file_slash_directory = "${in_output_file_slash_directory}"
  }
}