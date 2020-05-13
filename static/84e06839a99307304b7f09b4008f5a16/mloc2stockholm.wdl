version 1.0

task Mloc2stockholm.pl {
  input {
    Boolean fileFile
    Boolean splitSplitInput
    Boolean conConStruct
    Boolean intervalIntervalOnly
    Boolean relRelSignal
    Boolean modeMode
  }
  command <<<
    mloc2stockholm.pl \
      ~{true="-file" false="" fileFile} \
      ~{true="-split_input" false="" splitSplitInput} \
      ~{true="-con_struct" false="" conConStruct} \
      ~{true="-interval_only" false="" intervalIntervalOnly} \
      ~{true="-rel_signal" false="" relRelSignal} \
      ~{true="-mode" false="" modeMode}
  >>>
}