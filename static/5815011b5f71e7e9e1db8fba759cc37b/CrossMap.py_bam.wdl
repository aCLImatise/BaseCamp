version 1.0

task CrossMappyBam {
  input {
    Int? mean
    Int? stdev
    Int? times
    Boolean? append_tags
    String chain_file
    String input_file
    String output_file
  }
  command <<<
    CrossMap_py bam \
      ~{chain_file} \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(mean) then ("--mean " +  '"' + mean + '"') else ""} \
      ~{if defined(stdev) then ("--stdev " +  '"' + stdev + '"') else ""} \
      ~{if defined(times) then ("--times " +  '"' + times + '"') else ""} \
      ~{if (append_tags) then "--append-tags" else ""}
  >>>
  parameter_meta {
    mean: "Average insert size of pair-end sequencing (bp).\\n[default=200.0]"
    stdev: "Stanadard deviation of insert size. [default=30.0]"
    times: "A mapped pair is considered as \\\"proper pair\\\" if both\\nends mapped to different strand and the distance\\nbetween them is less then '-t' * stdev from the mean.\\n[default=3.0]"
    append_tags: "Add tag to each alignment."
    chain_file: ""
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}