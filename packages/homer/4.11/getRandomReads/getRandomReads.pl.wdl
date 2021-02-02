version 1.0

task GetRandomReadspl {
  input {
    Directory tag_directory
  }
  command <<<
    getRandomReads_pl \
      ~{tag_directory}
  >>>
  parameter_meta {
    tag_directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}