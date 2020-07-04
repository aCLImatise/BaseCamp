version 1.0

task SequanaFastqCount {
  input {
    String? input_fastq_gzipped
    String fast_q_count
    String var_2
    String n
    String var_output
  }
  command <<<
    sequana_fastq_count \
      ~{fast_q_count} \
      ~{var_2} \
      ~{n} \
      ~{var_output} \
      ~{if defined(input_fastq_gzipped) then ("--input " +  '"' + input_fastq_gzipped + '"') else ""}
  >>>
  parameter_meta {
    input_fastq_gzipped: "input fastq gzipped or not"
    fast_q_count: ""
    var_2: ""
    n: ""
    var_output: ""
  }
}