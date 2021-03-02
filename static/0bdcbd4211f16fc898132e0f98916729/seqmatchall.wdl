version 1.0

task Seqmatchall {
  input {
    Boolean? word_size
  }
  command <<<
    seqmatchall \
      ~{if (word_size) then "-wordsize" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    word_size: "integer    [4] Word size (Integer 2 or more)"
  }
  output {
    File out_stdout = stdout()
  }
}