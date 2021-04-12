version 1.0

task CobsPrintparameters {
  input {
    Boolean? false_positive_rate
    Boolean? num_elements
  }
  command <<<
    cobs print_parameters \
      ~{if (false_positive_rate) then "--false-positive-rate" else ""} \
      ~{if (num_elements) then "--num-elements" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0"
  }
  parameter_meta {
    false_positive_rate: "false positive rate, default: 0.3"
    num_elements: "number of elements to be inserted into the index"
  }
  output {
    File out_stdout = stdout()
  }
}