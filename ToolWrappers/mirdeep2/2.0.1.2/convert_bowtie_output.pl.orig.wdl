version 1.0

task ConvertBowtieOutputplorig {
  command <<<
    convert_bowtie_output_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}