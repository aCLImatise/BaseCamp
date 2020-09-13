version 1.0

task AddTagsToPrimerspy {
  command <<<
    add_tags_to_primers_py
  >>>
  output {
    File out_stdout = stdout()
  }
}