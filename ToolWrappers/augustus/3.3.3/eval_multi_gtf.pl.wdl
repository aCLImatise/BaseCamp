version 1.0

task EvalMultiGtfpl {
  input {
    Boolean? eval_path
  }
  command <<<
    eval_multi_gtf_pl \
      ~{if (eval_path) then "--EVAL_PATH" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    eval_path: "path to eval package (will try to guess from availability of evaluate_gtf.pl, but if that does not work because you don't have this script in your path, set with this command line option)."
  }
  output {
    File out_stdout = stdout()
  }
}