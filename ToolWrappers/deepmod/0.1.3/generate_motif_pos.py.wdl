version 1.0

task GenerateMotifPospy {
  command <<<
    generate_motif_pos_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}