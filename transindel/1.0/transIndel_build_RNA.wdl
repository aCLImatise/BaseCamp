version 1.0

task TransIndelBuildRNA.py {
  input {
    Boolean rR
    Boolean gG
    Boolean sS
    Boolean mapqMapqCutOff
    Boolean maxMaxDelLength
    String? pythonPython
    String? transTransInDelBuildRnaPy
    String? optsOpts
  }
  command <<<
    transIndel_build_RNA.py \
      ~{pythonPython} \
      ~{true="-r" false="" rR} \
      ~{true="-g" false="" gG} \
      ~{true="-s" false="" sS} \
      ~{true="--mapq_cutoff" false="" mapqMapqCutOff} \
      ~{true="--max_del_length" false="" maxMaxDelLength} \
      ~{transTransInDelBuildRnaPy} \
      ~{optsOpts}
  >>>
}