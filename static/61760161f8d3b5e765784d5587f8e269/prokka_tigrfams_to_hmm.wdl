version 1.0

task ProkkatigrfamsToHmm {
  command <<<
    prokka_tigrfams_to_hmm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}