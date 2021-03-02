version 1.0

task CrossMappyBam {
  input {
    Int? mean
    Int? stdev
    Int? times
    Boolean? append_tags
    String chain_file
    String input_dot_bam
    String? output_file
  }
  command <<<
    CrossMap_py bam \
      ~{chain_file} \
      ~{input_dot_bam} \
      ~{output_file} \
      ~{if defined(mean) then ("--mean " +  '"' + mean + '"') else ""} \
      ~{if defined(stdev) then ("--stdev " +  '"' + stdev + '"') else ""} \
      ~{if defined(times) then ("--times " +  '"' + times + '"') else ""} \
      ~{if (append_tags) then "--append-tags" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/crossmap:0.5.2--pyh7b7c402_0"
  }
  parameter_meta {
    mean: "Average insert size of pair-end sequencing (bp).\\n{default=200.0}"
    stdev: "Stanadard deviation of insert size. {default=30.0}"
    times: "A mapped pair is considered as \\\"proper pair\\\" if both\\nends mapped to different strand and\\nthe distance between them is less then '-t' * stdev\\nfrom the mean. {default=3.0}"
    append_tags: "Add tag to each alignment."
    chain_file: ""
    input_dot_bam: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}