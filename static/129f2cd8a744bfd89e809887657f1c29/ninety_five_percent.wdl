version 1.0

task NinetyFivePercent.py {
  input {
    String cat
    String data
  }
  command <<<
    ninety_five_percent.py \
      ~{cat} \
      ~{data}
  >>>
  parameter_meta {
    cat: ""
    data: ""
  }
}