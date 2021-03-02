version 1.0

task RenameFastqTag {
  input {
    Boolean? fast_q
    Boolean? string_tag_find
    Boolean? string_add_tag
    Boolean? log
  }
  command <<<
    rename_fastq_tag \
      ~{if (fast_q) then "-fastq" else ""} \
      ~{if (string_tag_find) then "-t" else ""} \
      ~{if (string_add_tag) then "-T" else ""} \
      ~{if (log) then "-log" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: "(string)        input fastq file."
    string_tag_find: "(string)        tag to find for cutting read name"
    string_add_tag: "(string)        add this tag to cut name"
    log: "(string)        log file."
  }
  output {
    File out_stdout = stdout()
  }
}