version 1.0

task TbprofilerGetDrFreq.py {
  input {
    String metaMeta
    String? jsonJson
  }
  command <<<
    tbprofiler_get_dr_freq.py \
      ~{jsonJson} \
      ~{if defined(metaMeta) then ("--meta " +  '"' + metaMeta + '"') else ""}
  >>>
}