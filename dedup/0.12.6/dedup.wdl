version 1.0

task Dedup {
  input {
    String? input_file_specified
    Boolean? merged
    String? output_folder_specified
    Boolean? unsorted
  }
  command <<<
    dedup \
      ~{if defined(input_file_specified) then ("--input " +  '"' + input_file_specified + '"') else ""} \
      ~{true="--merged" false="" merged} \
      ~{if defined(output_folder_specified) then ("--output " +  '"' + output_folder_specified + '"') else ""} \
      ~{true="--unsorted" false="" unsorted}
  >>>
  parameter_meta {
    input_file_specified: "the input file if this option is not specified, the input is expected to be piped in"
    merged: "the input only contains merged reads. If this option is specified read names are not examined for prefixes. Both the start and end of the aligment are considered for all reads."
    output_folder_specified: "the output folder. Has to be specified if input is set."
    unsorted: "Do not automatically sort the output"
  }
}