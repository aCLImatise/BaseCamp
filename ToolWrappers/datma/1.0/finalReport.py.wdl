version 1.0

task FinalReportpy {
  input {
    File? configuration_file
  }
  command <<<
    finalReport_py \
      ~{if defined(configuration_file) then ("--file " +  '"' + configuration_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    configuration_file: "configuration file"
  }
  output {
    File out_stdout = stdout()
  }
}