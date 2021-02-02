version 1.0

task ProkkatigrfamsToHmm {
  command <<<
    prokka_tigrfams_to_hmm
  >>>
  output {
    File out_stdout = stdout()
  }
}