version 1.0

task ConvertBowtieOutputplorig {
  command <<<
    convert_bowtie_output_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}