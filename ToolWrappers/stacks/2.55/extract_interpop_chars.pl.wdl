version 1.0

task ExtractInterpopCharspl {
  command <<<
    extract_interpop_chars_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/stacks:2.55--he513fc3_0"
  }
  output {
    File out_stdout = stdout()
  }
}