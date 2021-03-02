version 1.0

task Wordcount {
  input {
    Boolean? word_size
    Boolean? min_count
  }
  command <<<
    _wordcount \
      ~{if (word_size) then "-wordsize" else ""} \
      ~{if (min_count) then "-mincount" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    word_size: "integer    [@($(acdprotein)? 2 : 4)] Word size (Integer\\n1 or more)"
    min_count: "integer    [1] Minimum word count to report (Integer 1\\nor more)"
  }
  output {
    File out_stdout = stdout()
  }
}