version 1.0

task KmerStreamJoin {
  input {
    File? filename_print_output
    File merged_file
  }
  command <<<
    KmerStreamJoin \
      ~{merged_file} \
      ~{if defined(filename_print_output) then ("--output " +  '"' + filename_print_output + '"') else ""}
  >>>
  parameter_meta {
    filename_print_output: "Filename for output\\n--verbose            Print output at the end\\n"
    merged_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_filename_print_output = "${in_filename_print_output}"
  }
}