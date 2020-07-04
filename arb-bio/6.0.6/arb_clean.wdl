version 1.0

task ArbClean {
  input {
    String session
    String old
    String targets
    String kill_all
  }
  command <<<
    arb_clean \
      ~{session} \
      ~{old} \
      ~{targets} \
      ~{kill_all}
  >>>
  parameter_meta {
    session: "kill all processes running with current ARB_PID"
    old: "delete old pid-files from /tmp (dont do this while arb is running)"
    targets: "show process ids of processes, that will be killed by action 'killall'"
    kill_all: "kill all (current or former) arb processes CAUTION: may act completely wrong and kill various running non-ARB-processes!"
  }
}