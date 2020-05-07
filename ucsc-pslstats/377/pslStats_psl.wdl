version 1.0

task PslStatsPsl {
  input {
    String? statsStatsOut
  }
  command <<<
    pslStats psl \
      ~{statsStatsOut}
  >>>
}