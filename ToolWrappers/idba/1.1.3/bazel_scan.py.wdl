version 1.0

task Bazelscanpy {
  command <<<
    bazel_scan_py
  >>>
  output {
    File out_stdout = stdout()
  }
}