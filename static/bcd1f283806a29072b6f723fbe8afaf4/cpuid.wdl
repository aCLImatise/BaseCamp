version 1.0

task Cpuid {
  command <<<
    cpuid
  >>>
  runtime {
    docker: "quay.io/biocontainers/gmap:2020.10.14--pl526h2f06484_0"
  }
  output {
    File out_stdout = stdout()
  }
}