version 1.0

task Ogeneratematchingqualfile {
  command <<<
    o_generate_matching_qual_file
  >>>
  output {
    File out_stdout = stdout()
  }
}