version 1.0

task Fold {
  input {
    Boolean? bytes
    Boolean? spaces
    Int? width
  }
  command <<<
    fold \
      ~{if (bytes) then "--bytes" else ""} \
      ~{if (spaces) then "--spaces" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bytes: "count bytes rather than columns"
    spaces: "break at spaces"
    width: "use WIDTH columns instead of 80"
  }
  output {
    File out_stdout = stdout()
  }
}