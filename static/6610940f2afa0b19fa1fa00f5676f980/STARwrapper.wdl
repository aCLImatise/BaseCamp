version 1.0

task STARwrapper.py {
  input {
    String cpusCpus
  }
  command <<<
    STARwrapper.py \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""}
  >>>
}