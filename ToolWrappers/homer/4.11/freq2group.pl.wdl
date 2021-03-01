version 1.0

task Freq2grouppl {
  input {
    String freq
  }
  command <<<
    freq2group_pl \
      ~{freq}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    freq: "Bin     Count"
  }
  output {
    File out_stdout = stdout()
  }
}