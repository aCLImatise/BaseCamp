version 1.0

task LynerAutoencode {
  input {
    Int? validation_split
    Float? adjust_weights
  }
  command <<<
    lyner autoencode \
      ~{if defined(validation_split) then ("--validation-split " +  '"' + validation_split + '"') else ""} \
      ~{if defined(adjust_weights) then ("--adjust-weights " +  '"' + adjust_weights + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    validation_split: "RANGE"
    adjust_weights: "[discard|nodes|weights]"
  }
  output {
    File out_stdout = stdout()
  }
}