version 1.0

task PslStatsStatsOut {
  input {
    String? pslPsl
    String? statsStatsOut
  }
  command <<<
    pslStats statsOut \
      ~{pslPsl} \
      ~{statsStatsOut}
  >>>
}