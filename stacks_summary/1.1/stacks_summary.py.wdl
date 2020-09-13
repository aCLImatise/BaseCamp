version 1.0

task StacksSummarypy {
  input {
    String? res_dir
    String? stacks_prog
    File? log_file
    String? pop_map
    String? summary
  }
  command <<<
    stacks_summary_py \
      ~{if defined(res_dir) then ("--res-dir " +  '"' + res_dir + '"') else ""} \
      ~{if defined(stacks_prog) then ("--stacks-prog " +  '"' + stacks_prog + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(pop_map) then ("--pop-map " +  '"' + pop_map + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""}
  >>>
  parameter_meta {
    res_dir: "[--logfile LOGFILE]"
    stacks_prog: ""
    log_file: ""
    pop_map: ""
    summary: ""
  }
  output {
    File out_stdout = stdout()
  }
}