version 1.0

task KmerStreamJoin {
  input {
    File? filename_outputverbose_print
    File merged_file
  }
  command <<<
    KmerStreamJoin \
      ~{merged_file} \
      ~{if defined(filename_outputverbose_print) then ("--output " +  '"' + filename_outputverbose_print + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filename_outputverbose_print: "Filename for output\\n--verbose            Print output at the end\\n"
    merged_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_filename_outputverbose_print = "${in_filename_outputverbose_print}"
  }
}