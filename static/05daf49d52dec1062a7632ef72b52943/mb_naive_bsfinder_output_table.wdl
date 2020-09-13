version 1.0

task MbnaivebsfinderOutputTable {
  input {
    Int? min_transitions
    String mb_naive_bs_finder
  }
  command <<<
    mb_naive_bsfinder output_table \
      ~{mb_naive_bs_finder} \
      ~{if defined(min_transitions) then ("--min_transitions " +  '"' + min_transitions + '"') else ""}
  >>>
  parameter_meta {
    min_transitions: ""
    mb_naive_bs_finder: ""
  }
  output {
    File out_stdout = stdout()
  }
}