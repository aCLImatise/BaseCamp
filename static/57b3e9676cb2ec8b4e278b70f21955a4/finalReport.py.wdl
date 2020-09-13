version 1.0

task FinalReportpy {
  input {
    File? file
  }
  command <<<
    finalReport_py \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    file: "configuration file"
  }
  output {
    File out_stdout = stdout()
  }
}