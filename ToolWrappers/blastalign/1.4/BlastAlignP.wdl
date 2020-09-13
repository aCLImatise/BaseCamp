version 1.0

task BlastAlignP {
  input {
    Boolean? tf_leave_stop
    Boolean? max_proportion_gaps
    File? tf_retain_original
    File? l
    File? i
  }
  command <<<
    BlastAlignP \
      ~{if (tf_leave_stop) then "-s" else ""} \
      ~{if (max_proportion_gaps) then "-m" else ""} \
      ~{if (tf_retain_original) then "-n" else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    tf_leave_stop: "<T/F> Leave in stop codons T(rue)/F(alse - replace with gaps). Optional; default = T"
    max_proportion_gaps: "<max proportion of gaps allowed in any one sequence in the final alignment> Optional; default = 0.95"
    tf_retain_original: "<T/F> Retain original names in output file. T(rue)/F(alse). Optional; default = T; option F is to output the 15 character abbreviations stripped of potentially problematic symbols which is used in the program"
    l: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
    File out_tf_retain_original = "${in_tf_retain_original}"
  }
}