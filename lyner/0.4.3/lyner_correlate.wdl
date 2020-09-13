version 1.0

task LynerCorrelate {
  input {
    Boolean? method
  }
  command <<<
    lyner correlate \
      ~{if (method) then "--method" else ""}
  >>>
  parameter_meta {
    method: "[pearson|kendall|spearman]"
  }
  output {
    File out_stdout = stdout()
  }
}