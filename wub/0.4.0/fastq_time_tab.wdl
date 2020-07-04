version 1.0

task FastqTimeTab.py {
  input {
    String? tab_separated_file
    String fast_q
  }
  command <<<
    fastq_time_tab.py \
      ~{fast_q} \
      ~{if defined(tab_separated_file) then ("-t " +  '"' + tab_separated_file + '"') else ""}
  >>>
  parameter_meta {
    tab_separated_file: "Tab separated file to save read time table."
    fast_q: "Input fastq file."
  }
}