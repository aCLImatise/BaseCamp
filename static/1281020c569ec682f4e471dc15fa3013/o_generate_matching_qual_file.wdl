version 1.0

task Ogeneratematchingqualfile {
  command <<<
    o_generate_matching_qual_file
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}