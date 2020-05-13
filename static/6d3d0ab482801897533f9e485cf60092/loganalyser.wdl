version 1.0

task Loganalyser {
  input {
    String burninBurnin
    String shortShort
    String hpdHpd
    String essEss
    String stderrStderr
    String marginalMarginal
  }
  command <<<
    loganalyser \
      ~{if defined(burninBurnin) then ("-burnin " +  '"' + burninBurnin + '"') else ""} \
      ~{if defined(shortShort) then ("-short " +  '"' + shortShort + '"') else ""} \
      ~{if defined(hpdHpd) then ("-hpd " +  '"' + hpdHpd + '"') else ""} \
      ~{if defined(essEss) then ("-ess " +  '"' + essEss + '"') else ""} \
      ~{if defined(stderrStderr) then ("-stdErr " +  '"' + stderrStderr + '"') else ""} \
      ~{if defined(marginalMarginal) then ("-marginal " +  '"' + marginalMarginal + '"') else ""}
  >>>
}