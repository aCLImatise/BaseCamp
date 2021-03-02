version 1.0

task BlastAlignP {
  input {
    Boolean? tf_leave_replace
    Boolean? max_proportion_gaps
    File? tf_retain_names
    File? l
    File? i
  }
  command <<<
    BlastAlignP \
      ~{if (tf_leave_replace) then "-s" else ""} \
      ~{if (max_proportion_gaps) then "-m" else ""} \
      ~{if (tf_retain_names) then "-n" else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tf_leave_replace: "<T/F> Leave in stop codons T(rue)/F(alse - replace with gaps). Optional; default = T"
    max_proportion_gaps: "<max proportion of gaps allowed in any one sequence in the final alignment> Optional; default = 0.95"
    tf_retain_names: "<T/F> Retain original names in output file. T(rue)/F(alse). Optional; default = T; option F is to output the 15 character abbreviations stripped of potentially problematic symbols which is used in the program"
    l: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
    File out_tf_retain_names = "${in_tf_retain_names}"
  }
}