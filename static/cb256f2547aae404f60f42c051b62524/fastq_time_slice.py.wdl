version 1.0

task FastqTimeSlicepy {
  input {
    File? tab_separeted_file
    String? start_slice_percent
    String? end_slice_percent
  }
  command <<<
    fastq_time_slice_py \
      ~{if defined(tab_separeted_file) then ("-t " +  '"' + tab_separeted_file + '"') else ""} \
      ~{if defined(start_slice_percent) then ("-s " +  '"' + start_slice_percent + '"') else ""} \
      ~{if defined(end_slice_percent) then ("-e " +  '"' + end_slice_percent + '"') else ""}
  >>>
  parameter_meta {
    tab_separeted_file: "Tab separeted file produced by fastq_time_tab.py."
    start_slice_percent: "Start of slice as percent of total time."
    end_slice_percent: "End of slice as percent of total time."
  }
  output {
    File out_stdout = stdout()
  }
}