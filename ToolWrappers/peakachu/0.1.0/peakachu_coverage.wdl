version 1.0

task PeakachuCoverage {
  input {
    Int? max_proc
    String project_folder
  }
  command <<<
    peakachu coverage \
      ~{project_folder} \
      ~{if defined(max_proc) then ("--max_proc " +  '"' + max_proc + '"') else ""}
  >>>
  parameter_meta {
    max_proc: ""
    project_folder: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}