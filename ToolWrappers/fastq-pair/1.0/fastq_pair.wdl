version 1.0

task FastqPair {
  input {
    Int? size_default
    Int? number_elements_bucket
    String? output_mainly_debugging
  }
  command <<<
    fastq_pair \
      ~{if defined(size_default) then ("-t " +  '"' + size_default + '"') else ""} \
      ~{if defined(number_elements_bucket) then ("-p " +  '"' + number_elements_bucket + '"') else ""} \
      ~{if defined(output_mainly_debugging) then ("-v " +  '"' + output_mainly_debugging + '"') else ""}
  >>>
  parameter_meta {
    size_default: "size (default 100003)"
    number_elements_bucket: "the number of elements in each bucket in the table"
    output_mainly_debugging: "output. This is mainly for debugging"
  }
  output {
    File out_stdout = stdout()
  }
}