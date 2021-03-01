version 1.0

task Nthseq {
  input {
    Boolean? number
  }
  command <<<
    _nthseq \
      ~{if (number) then "-number" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number: "integer    [1] The number of the sequence to output\\n(Integer 1 or more)"
  }
  output {
    File out_stdout = stdout()
  }
}