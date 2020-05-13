version 1.0

task TransIndelBuildDNA.py {
  input {
    Boolean mapqMapqCutOff
    Boolean maxMaxDelLength
    String? pythonPython
    String? transTransInDelBuildDnaPy
    String? optsOpts
  }
  command <<<
    transIndel_build_DNA.py \
      ~{pythonPython} \
      ~{true="--mapq_cutoff" false="" mapqMapqCutOff} \
      ~{true="--max_del_length" false="" maxMaxDelLength} \
      ~{transTransInDelBuildDnaPy} \
      ~{optsOpts}
  >>>
}