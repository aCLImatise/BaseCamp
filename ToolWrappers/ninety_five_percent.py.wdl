version 1.0

task NinetyFivePercentpy {
  input {
    String cat
    String data
  }
  command <<<
    ninety_five_percent_py \
      ~{cat} \
      ~{data}
  >>>
  parameter_meta {
    cat: ""
    data: ""
  }
  output {
    File out_stdout = stdout()
  }
}