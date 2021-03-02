version 1.0

task RenamePeakspl {
  input {
    File peak_file
  }
  command <<<
    renamePeaks_pl \
      ~{peak_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    peak_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}