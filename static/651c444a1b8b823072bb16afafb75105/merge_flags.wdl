version 1.0

task MergeFlags.py {
  input {
    Array[String] input_number_flag
    Array[File] filename
    String? flag_uniqid
    String? output_file
  }
  command <<<
    merge_flags.py \
      ~{if defined(input_number_flag) then ("--input " +  '"' + input_number_flag + '"') else ""} \
      ~{if defined(filename) then ("--filename " +  '"' + filename + '"') else ""} \
      ~{if defined(flag_uniqid) then ("--flagUniqID " +  '"' + flag_uniqid + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    input_number_flag: "Input any number of flag files that have the same indexes"
    filename: "Filename for input data."
    flag_uniqid: "Name of the column with unique identifiers in the flag files."
    output_file: "Output file"
  }
}