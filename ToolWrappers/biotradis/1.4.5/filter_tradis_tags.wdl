version 1.0

task FilterTradisTags {
  input {
    Boolean? fastq_file_tradis
    Boolean? _tag_search
    Boolean? number_mismatches_allow
    File? output_file_name
    File? b
    String filter_tags
  }
  command <<<
    filter_tradis_tags \
      ~{filter_tags} \
      ~{if (fastq_file_tradis) then "-f" else ""} \
      ~{if (_tag_search) then "-t" else ""} \
      ~{if (number_mismatches_allow) then "-m" else ""} \
      ~{if (output_file_name) then "-o" else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fastq_file_tradis: ": fastq file with tradis tags attached"
    _tag_search: ": tag to search for"
    number_mismatches_allow: ": number of mismatches to allow when matching tag (optional. default = 0)"
    output_file_name: ": output file name (optional. default: <file>.tag.fastq)"
    b: ""
    filter_tags: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}