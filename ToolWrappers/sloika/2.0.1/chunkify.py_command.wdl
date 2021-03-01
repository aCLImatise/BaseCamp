version 1.0

task ChunkifypyCommand {
  input {
    String chunk_if_y_do_tpy
  }
  command <<<
    chunkify_py command \
      ~{chunk_if_y_do_tpy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chunk_if_y_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}