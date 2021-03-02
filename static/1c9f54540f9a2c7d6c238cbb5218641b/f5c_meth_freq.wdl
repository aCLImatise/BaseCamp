version 1.0

task F5cMethfreq {
  input {
    Float? call_threshold_log
    File? input_file_read
    File? output_file_write
    Boolean? split_groups
    String meth_freq
  }
  command <<<
    f5c meth_freq \
      ~{meth_freq} \
      ~{if defined(call_threshold_log) then ("-c " +  '"' + call_threshold_log + '"') else ""} \
      ~{if defined(input_file_read) then ("-i " +  '"' + input_file_read + '"') else ""} \
      ~{if defined(output_file_write) then ("-o " +  '"' + output_file_write + '"') else ""} \
      ~{if (split_groups) then "-s" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/f5c:0.6--h8b6279f_0"
  }
  parameter_meta {
    call_threshold_log: "call threshold for the log likelihood ratio. Default is 2.5."
    input_file_read: "input file. Read from stdin if not specified"
    output_file_write: "output file. Write to stdout if not specified"
    split_groups: "split groups"
    meth_freq: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_write = "${in_output_file_write}"
  }
}