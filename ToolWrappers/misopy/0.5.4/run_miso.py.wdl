version 1.0

task RunMisopy {
  input {
    String? compare_samples_dot
  }
  command <<<
    run_miso_py \
      ~{if defined(compare_samples_dot) then ("--compare-samples. " +  '"' + compare_samples_dot + '"') else ""}
  >>>
  parameter_meta {
    compare_samples_dot: "two arguments: the label for"
  }
  output {
    File out_stdout = stdout()
  }
}