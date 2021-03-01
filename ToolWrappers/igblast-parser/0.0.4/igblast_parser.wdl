version 1.0

task Igblastparser {
  command <<<
    igblast_parser
  >>>
  runtime {
    docker: "quay.io/biocontainers/igblast-parser:0.0.4--py39h3dcb392_0"
  }
  output {
    File out_stdout = stdout()
  }
}