version 1.0

task SequanaFastqHead {
  input {
    Int? nlines
    File? input_fastq_gzipped
    File? output_file_extension
    String fast_q_head
    String var_4
    String var_5
  }
  command <<<
    sequana_fastq_head \
      ~{fast_q_head} \
      ~{var_4} \
      ~{var_5} \
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
    fast_q_head: ""
    var_4: ""
    var_5: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_extension = "${in_output_file_extension}"
  }
}