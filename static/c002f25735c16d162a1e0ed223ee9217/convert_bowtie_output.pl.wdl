version 1.0

task ConvertBowtieOutputpl {
  command <<<
    convert_bowtie_output_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}