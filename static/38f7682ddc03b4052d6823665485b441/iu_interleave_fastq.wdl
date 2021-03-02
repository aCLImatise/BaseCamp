version 1.0

task Iuinterleavefastq {
  input {
    Int? one
    Int? two
    File? output_file_path
    String fast_q
  }
  command <<<
    iu_interleave_fastq \
      ~{fast_q} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(output_file_path) then ("--output-file-path " +  '"' + output_file_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    one: "FASTQ, --input-r1 R1 FASTQ\\nRead 1"
    two: "FASTQ, --input-r2 R2 FASTQ\\nRead 1"
    output_file_path: "Interleaved FASTQ file path (give it a good name).\\n"
    fast_q: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
  }
}