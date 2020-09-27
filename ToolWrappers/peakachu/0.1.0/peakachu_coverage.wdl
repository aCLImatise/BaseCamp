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
  parameter_meta {
    p: ""
    project_folder: ""
  }
  output {
    File out_stdout = stdout()
  }
}