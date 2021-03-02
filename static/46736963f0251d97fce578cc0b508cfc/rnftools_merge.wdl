version 1.0

task RnftoolsMerge {
  input {
    Array[String] input_fastq_files
    String? mode_pairedendbwa_pairedendbfast
    String? output_prefix
  }
  command <<<
    rnftools merge \
      ~{if defined(input_fastq_files) then ("-i " +  '"' + input_fastq_files + '"') else ""} \
      ~{if defined(mode_pairedendbwa_pairedendbfast) then ("-m " +  '"' + mode_pairedendbwa_pairedendbfast + '"') else ""} \
      ~{if defined(output_prefix) then ("-o " +  '"' + output_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fastq_files: "input FASTQ files"
    mode_pairedendbwa_pairedendbfast: "mode for mergeing files (single-end / paired-end-bwa / paired-end-bfast)"
    output_prefix: "output prefix"
  }
  output {
    File out_stdout = stdout()
  }
}