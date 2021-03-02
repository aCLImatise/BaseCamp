version 1.0

task MathNetNumericsxml {
  command <<<
    MathNet_Numerics_xml
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}