version 1.0

task FastqTimeTabpy {
  input {
    File? tab_separated_file
    String fast_q
  }
  command <<<
    fastq_time_tab_py \
      ~{fast_q} \
      ~{if defined(tab_separated_file) then ("-t " +  '"' + tab_separated_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tab_separated_file: "Tab separated file to save read time table."
    fast_q: "Input fastq file."
  }
  output {
    File out_stdout = stdout()
  }
}