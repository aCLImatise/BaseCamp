version 1.0

task FindCommonFragmentInteractionspl {
  command <<<
    find_common_fragment_interactions_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}