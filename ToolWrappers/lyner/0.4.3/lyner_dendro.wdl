version 1.0

task LynerDendro {
  input {
    Int? axis
  }
  command <<<
    lyner dendro \
      ~{if defined(axis) then ("--axis " +  '"' + axis + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    axis: "RANGE"
  }
  output {
    File out_stdout = stdout()
  }
}