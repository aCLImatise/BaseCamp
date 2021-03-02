version 1.0

task AddTagsToPrimerspy {
  command <<<
    add_tags_to_primers_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}