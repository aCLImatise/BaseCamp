version 1.0

task XsvIndex {
  input {
    File? write_index_file
    String? delimiter
  }
  command <<<
    xsv index \
      ~{if defined(write_index_file) then ("--output " +  '"' + write_index_file + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_index_file: "Write index to <file> instead of <input>.idx.\\nGenerally, this is not currently useful because\\nthe only way to use an index is if it is specially\\nnamed <input>.idx."
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. (default: ,)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}