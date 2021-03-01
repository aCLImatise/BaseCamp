version 1.0

task ConvertBowtieOutputpl {
  command <<<
    convert_bowtie_output_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}