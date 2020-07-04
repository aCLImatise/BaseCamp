version 1.0

task FastqCount {
  input {
    String? input_fastq_gzipped
    String var_1
    String n
    String var_output
  }
  command <<<
    fastq_count \
      ~{var_1} \
      ~{n} \
      ~{var_output} \
      ~{if defined(input_fastq_gzipped) then ("--input " +  '"' + input_fastq_gzipped + '"') else ""}
  >>>
  parameter_meta {
    input_fastq_gzipped: "input fastq gzipped or not"
    var_1: ""
    n: ""
    var_output: ""
  }
}