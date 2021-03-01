version 1.0

task FastqCount {
  input {
    File? input_fastq_gzipped
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fastq_gzipped: "input fastq gzipped or not\\n"
    var_1: ""
    n: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}