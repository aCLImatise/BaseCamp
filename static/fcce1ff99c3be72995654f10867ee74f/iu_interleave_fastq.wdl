version 1.0

task IuInterleaveFastq {
  input {
    String? one
    String? two
    String? output_file_path
    String var_3
    String var_4
  }
  command <<<
    iu-interleave-fastq \
      ~{var_3} \
      ~{var_4} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(output_file_path) then ("--output-file-path " +  '"' + output_file_path + '"') else ""}
  >>>
  parameter_meta {
    one: "FASTQ, --input-r1 R1 FASTQ Read 1"
    two: "FASTQ, --input-r2 R2 FASTQ Read 1"
    output_file_path: "Interleaved FASTQ file path (give it a good name)."
    var_3: ""
    var_4: ""
  }
}