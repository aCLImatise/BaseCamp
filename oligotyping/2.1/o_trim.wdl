version 1.0

task OTrim {
  input {
    Int? trim_from
    Int? trim_to
    Int? min_length
    File? output_file_name
    File file
  }
  command <<<
    o-trim \
      ~{file} \
      ~{if defined(trim_from) then ("--trim-from " +  '"' + trim_from + '"') else ""} \
      ~{if defined(trim_to) then ("--trim-to " +  '"' + trim_to + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    trim_from: "Start position"
    trim_to: "End position"
    min_length: "Minimum lenght of a read to be kept"
    output_file_name: "Output file name."
    file: "FASTA file to subsample"
  }
}