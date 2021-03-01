version 1.0

task MbnaivebsfinderPileupFile {
  input {
    Int? min_transitions
    String mb_naive_bs_finder
  }
  command <<<
    mb_naive_bsfinder pileup_file \
      ~{mb_naive_bs_finder} \
      ~{if defined(min_transitions) then ("--min_transitions " +  '"' + min_transitions + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_transitions: ""
    mb_naive_bs_finder: ""
  }
  output {
    File out_stdout = stdout()
  }
}