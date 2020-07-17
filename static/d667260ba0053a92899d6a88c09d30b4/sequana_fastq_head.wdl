version 1.0

task SequanaFastqHead {
  input {
    String? nlines
    String? input_fastq_gzipped
    String? output_file_extension
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
  parameter_meta {
    nlines: "Number of lines to extract."
    input_fastq_gzipped: "input fastq gzipped or not"
    output_file_extension: "output file with .gz extension or not"
    fast_q_head: ""
    var_4: ""
    var_5: ""
  }
}