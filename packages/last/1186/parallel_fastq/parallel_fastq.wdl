version 1.0

task Parallelfastq {
  input {
    String? run_jobs_parallel
    Boolean? keep_same_order
    Boolean? multiple_arguments_context
    String? col_sep
    String? example_fooserverexamplecom
    Boolean? slf
    String? trc
    Boolean? on_all
    Boolean? non_all
    Boolean? pipe
    String? rec_end
    String? rec_start
    String parallel
    String? var_command
    String? arguments
  }
  command <<<
    parallel_fastq \
      ~{parallel} \
      ~{var_command} \
      ~{arguments} \
      ~{if defined(run_jobs_parallel) then ("-j " +  '"' + run_jobs_parallel + '"') else ""} \
      ~{if (keep_same_order) then "-k" else ""} \
      ~{if (multiple_arguments_context) then "-X" else ""} \
      ~{if defined(col_sep) then ("--colsep " +  '"' + col_sep + '"') else ""} \
      ~{if defined(example_fooserverexamplecom) then ("-S " +  '"' + example_fooserverexamplecom + '"') else ""} \
      ~{if (slf) then "--slf" else ""} \
      ~{if defined(trc) then ("--trc " +  '"' + trc + '"') else ""} \
      ~{if (on_all) then "--onall" else ""} \
      ~{if (non_all) then "--nonall" else ""} \
      ~{if (pipe) then "--pipe" else ""} \
      ~{if defined(rec_end) then ("--recend " +  '"' + rec_end + '"') else ""} \
      ~{if defined(rec_start) then ("--recstart " +  '"' + rec_start + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/last:1186--h8b12597_0"
  }
  parameter_meta {
    run_jobs_parallel: "Run n jobs in parallel"
    keep_same_order: "Keep same order"
    multiple_arguments_context: "Multiple arguments with context replace"
    col_sep: "Split input on regexp for positional replacements"
    example_fooserverexamplecom: "Example: foo@server.example.com"
    slf: "..        Use ~/.parallel/sshloginfile as the list of sshlogins"
    trc: ".bar    Shorthand for --transfer --return {}.bar --cleanup"
    on_all: "Run the given command with argument on all sshlogins"
    non_all: "Run the given command with no arguments on all sshlogins"
    pipe: "Split stdin (standard input) to multiple jobs."
    rec_end: "Record end separator for --pipe."
    rec_start: "Record start separator for --pipe."
    parallel: ""
    var_command: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}