version 1.0

task Analyzegenessh {
  input {
    String in
  }
  command <<<
    analyzegenes_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}