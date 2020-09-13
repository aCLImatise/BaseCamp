version 1.0

task PeakCenters {
  input {
    Boolean? numberthis_will_add
    Boolean? process_a_file
  }
  command <<<
    peakCenters \
      ~{if (numberthis_will_add) then "-n" else ""} \
      ~{if (process_a_file) then "-v" else ""}
  >>>
  parameter_meta {
    numberthis_will_add: "NUMBER\\nThis will add NUMBER bases before and after the start and stop coordinates\\nfor the peak. The default value is 100. You can set it to 0 if you just\\nwant the peak coordinates."
    process_a_file: "Process a \\\"_vis.bed\\\" file instead of an \\\"_analysis.bed\\\" file."
  }
  output {
    File out_stdout = stdout()
  }
}