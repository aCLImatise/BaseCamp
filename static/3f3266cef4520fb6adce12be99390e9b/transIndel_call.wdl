version 1.0

task TransIndelCall.py {
  input {
    Boolean rR
    Boolean cC
    Boolean dD
    Boolean fF
    Boolean lL
    Boolean mM
    Boolean tT
    String? pythonPython
    String? transTransInDelCallPy
    String? optsOpts
  }
  command <<<
    transIndel_call.py \
      ~{pythonPython} \
      ~{true="-r" false="" rR} \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{true="-l" false="" lL} \
      ~{true="-m" false="" mM} \
      ~{true="-t" false="" tT} \
      ~{transTransInDelCallPy} \
      ~{optsOpts}
  >>>
}