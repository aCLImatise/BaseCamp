version 1.0

task RemoveTradisTags {
  input {
    Boolean? fastq_file_tradis
    Boolean? _tag_remove
    Boolean? number_allow_matching
    File? output_file_name
    String remove_tags
  }
  command <<<
    remove_tradis_tags \
      ~{remove_tags} \
      ~{if (fastq_file_tradis) then "-f" else ""} \
      ~{if (_tag_remove) then "-t" else ""} \
      ~{if (number_allow_matching) then "-m" else ""} \
      ~{if (output_file_name) then "-o" else ""}
  >>>
  parameter_meta {
    fastq_file_tradis: ": fastq file with tradis tags"
    _tag_remove: ": tag to remove"
    number_allow_matching: ": number of mismatches to allow when matching tag (optional. default = 0)"
    output_file_name: ": output file name (optional. default: <file>.rmtag.fastq)"
    remove_tags: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}