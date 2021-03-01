version 1.0

task Dottup {
  input {
    Boolean? word_size
    Boolean? stretch
  }
  command <<<
    dottup \
      ~{if (word_size) then "-wordsize" else ""} \
      ~{if (stretch) then "-stretch" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    word_size: "integer    [10] Word size (Integer 2 or more)"
    stretch: "toggle     [N] Use non-proportional axes"
  }
  output {
    File out_stdout = stdout()
  }
}