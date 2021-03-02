version 1.0

task NamotionReflectionxml {
  command <<<
    Namotion_Reflection_xml
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}