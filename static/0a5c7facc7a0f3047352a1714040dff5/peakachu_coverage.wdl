version 1.0

task PeakachuCoverage {
  input {
    Int? p
    String project_folder
  }
  command <<<
    peakachu coverage \
      ~{project_folder} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/peakachu:0.2.0--py36hc5360cc_0"
  }
  parameter_meta {
    p: ""
    project_folder: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}