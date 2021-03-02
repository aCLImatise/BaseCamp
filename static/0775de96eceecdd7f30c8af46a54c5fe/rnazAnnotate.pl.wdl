version 1.0

task RnazAnnotatepl {
  input {
    Boolean? bed
  }
  command <<<
    rnazAnnotate_pl \
      ~{if (bed) then "--bed" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: "Set the annotation BED file with this option.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}