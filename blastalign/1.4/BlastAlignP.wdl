version 1.0

task BlastAlignP {
  input {
    Boolean? tf_leave_stop
    Boolean? max_proportion_allowed
    Boolean? tf_retain_original
    String? i
    String? l
  }
  command <<<
    BlastAlignP \
      ~{true="-s" false="" tf_leave_stop} \
      ~{true="-m" false="" max_proportion_allowed} \
      ~{true="-n" false="" tf_retain_original} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    tf_leave_stop: "<T/F> Leave in stop codons T(rue)/F(alse - replace with gaps). Optional; default = T"
    max_proportion_allowed: "<max proportion of gaps allowed in any one sequence in the final alignment> Optional; default = 0.95"
    tf_retain_original: "<T/F> Retain original names in output file. T(rue)/F(alse). Optional; default = T; option F is to output the 15 character abbreviations stripped of potentially problematic symbols which is used in the program"
    i: ""
    l: ""
  }
}