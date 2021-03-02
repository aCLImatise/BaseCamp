version 1.0

task SignificanceCalculatorpy {
  input {
    String? m
  }
  command <<<
    significanceCalculator_py \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    m: ""
  }
  output {
    File out_stdout = stdout()
  }
}