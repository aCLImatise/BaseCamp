version 1.0

task MergeFlagspy {
  input {
    Array[String] input_number_flag
    Array[File] filename
    String? flag_uniqid
    File? output_file
  }
  command <<<
    merge_flags_py \
      ~{if defined(input_number_flag) then ("--input " +  '"' + input_number_flag + '"') else ""} \
      ~{if defined(filename) then ("--filename " +  '"' + filename + '"') else ""} \
      ~{if defined(flag_uniqid) then ("--flagUniqID " +  '"' + flag_uniqid + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/secimtools:21.3.4.2--py_0"
  }
  parameter_meta {
    input_number_flag: "Input any number of flag files that have the same\\nindexes"
    filename: "Filename for input data."
    flag_uniqid: "Name of the column with unique identifiers in the flag\\nfiles."
    output_file: "Output file\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}