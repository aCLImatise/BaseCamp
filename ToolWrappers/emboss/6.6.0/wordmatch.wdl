version 1.0

task Wordmatch {
  input {
    Boolean? word_size
    Boolean? log_file
  }
  command <<<
    wordmatch \
      ~{if (word_size) then "-wordsize" else ""} \
      ~{if (log_file) then "-logfile" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    word_size: "integer    [4] Word size (Integer 2 or more)"
    log_file: "outfile    [wordmatch.log] Statistics on distribution\\nof kmers and matches"
  }
  output {
    File out_stdout = stdout()
  }
}