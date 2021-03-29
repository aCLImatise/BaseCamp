version 1.0

task CoolboxCurrentRangeSort {
  input {
    Boolean? key
    Boolean? reverse
  }
  command <<<
    coolbox current_range sort \
      ~{if (key) then "--key" else ""} \
      ~{if (reverse) then "--reverse" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coolbox:0.3.6--py_0"
  }
  parameter_meta {
    key: "=[4mKEY[0m"
    reverse: "=[4mREVERSE[0m"
  }
  output {
    File out_stdout = stdout()
  }
}