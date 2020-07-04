version 1.0

task Sample.py {
  input {
    String cat
    String data
  }
  command <<<
    sample.py \
      ~{cat} \
      ~{data}
  >>>
  parameter_meta {
    cat: ""
    data: ""
  }
}