version 1.0

task StacksSummarypy {
  input {
    String? res_dir
    Boolean? stacks_prog
  }
  command <<<
    stacks_summary_py \
      ~{if defined(res_dir) then ("--res-dir " +  '"' + res_dir + '"') else ""} \
      ~{if (stacks_prog) then "--stacks-prog" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    res_dir: "[--logfile LOGFILE]"
    stacks_prog: ""
  }
  output {
    File out_stdout = stdout()
  }
}