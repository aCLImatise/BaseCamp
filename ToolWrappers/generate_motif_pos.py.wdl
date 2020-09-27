version 1.0

task GenerateMotifPospy {
  command <<<
    generate_motif_pos_py
  >>>
  output {
    File out_stdout = stdout()
  }
}