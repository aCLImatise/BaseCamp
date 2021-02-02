version 1.0

task SnaptoolsDexfastq {
  input {
    File? input_fast_q
    File? output_fast_q
    Array[String] index_fast_q_list
  }
  command <<<
    snaptools dex_fastq \
      ~{if defined(input_fast_q) then ("--input-fastq " +  '"' + input_fast_q + '"') else ""} \
      ~{if defined(output_fast_q) then ("--output-fastq " +  '"' + output_fast_q + '"') else ""} \
      ~{if defined(index_fast_q_list) then ("--index-fastq-list " +  '"' + index_fast_q_list + '"') else ""}
  >>>
  parameter_meta {
    input_fast_q: "fastq file contains the sequencing reads (default:\\nNone)"
    output_fast_q: "output decomplexed fastq file (default: None)"
    index_fast_q_list: "a list of fastq files that contain the cell indices.\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_fast_q = "${in_output_fast_q}"
  }
}