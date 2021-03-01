version 1.0

task KtGetLCA {
  input {
    Boolean? streaming_mode_line
  }
  command <<<
    ktGetLCA \
      ~{if (streaming_mode_line) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    streaming_mode_line: "Streaming mode. Each line is expected to be a whitespace-separated list\\nof inputs for a single lowest common ancestor computation. Taxonomy will\\nbe preloaded, allowing for faster computation after a small upfront time.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}