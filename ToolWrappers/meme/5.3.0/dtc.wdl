version 1.0

task Dtc {
  input {
    String? min_sum
    String copyright
  }
  command <<<
    dtc \
      ~{copyright} \
      ~{if defined(min_sum) then ("-minsum " +  '"' + min_sum + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    min_sum: ""
    copyright: "(2016) The Regents of the University of California"
  }
  output {
    File out_stdout = stdout()
  }
}