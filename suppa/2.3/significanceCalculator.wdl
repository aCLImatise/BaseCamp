version 1.0

task SignificanceCalculator.py {
  input {
    String? m
  }
  command <<<
    significanceCalculator.py \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    m: ""
  }
}