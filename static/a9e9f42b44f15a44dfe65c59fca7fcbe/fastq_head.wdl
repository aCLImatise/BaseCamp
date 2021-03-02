version 1.0

task FastqHead {
  input {
    Int? nlines
    File? input_fastq_gzipped
    File? output_file_extension
    String var_3
    String var_4
  }
  command <<<
    fastq_head \
      ~{var_3} \
      ~{var_4} \
      ~{if defined(nlines) then ("--nlines " +  '"' + nlines + '"') else ""} \
      ~{if defined(input_fastq_gzipped) then ("--input " +  '"' + input_fastq_gzipped + '"') else ""} \
      ~{if defined(output_file_extension) then ("--output " +  '"' + output_file_extension + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nlines: "Number of lines to extract."
    input_fastq_gzipped: "input fastq gzipped or not"
    output_file_extension: "output file with .gz extension or not\\n"
    var_3: ""
    var_4: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_extension = "${in_output_file_extension}"
  }
}