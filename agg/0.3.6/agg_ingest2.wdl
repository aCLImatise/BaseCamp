version 1.0

task AggIngest2 {
  input {
    String? agg_will_output
    Int? thread
    Boolean? list
    Int input_one
  }
  command <<<
    agg ingest2 \
      ~{input_one} \
      ~{if defined(agg_will_output) then ("--output " +  '"' + agg_will_output + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if (list) then "--list" else ""}
  >>>
  parameter_meta {
    agg_will_output: "agg will output output_prefix.bcf and output_prefix.dpt"
    thread: "number of compression threads [0]"
    list: "files.txt             plain text file listing agg chunks to merge]"
    input_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}