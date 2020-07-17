version 1.0

task IuRemoveIdsFromFastq {
  input {
    String? input_fast_q
    String? ids_file_path
    String? delimiter
    Boolean? generate_output_for_survived_only
    Boolean? keep_ids
  }
  command <<<
    iu-remove-ids-from-fastq \
      ~{if defined(input_fast_q) then ("--input-fastq " +  '"' + input_fast_q + '"') else ""} \
      ~{if defined(ids_file_path) then ("--ids-file-path " +  '"' + ids_file_path + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{true="--generate-output-for-survived-only" false="" generate_output_for_survived_only} \
      ~{true="--keep-ids" false="" keep_ids}
  >>>
  parameter_meta {
    input_fast_q: "Sequences file from which reads will be removed in FASTQ format"
    ids_file_path: "Input file that contains the list of ids for removal"
    delimiter: "By default this script will perform exact match match for IDs you listed in the IDs file. But using this parameter, you can ask the script to \"split\" the IDs found in the FASTQ file, and then try to match the first part of the resulting ID to those you listed in the IDs file."
    generate_output_for_survived_only: "If provided then only one output file (the file with \"survived\" ids) will be produced."
    keep_ids: "If provided, then instead of removing the ids in the list, only the ids in the list will be kept (and the rest would be removed)."
  }
}