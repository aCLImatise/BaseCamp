version 1.0

task Estimatemerthreshold {
  input {
    File? file_of_mercounts
  }
  command <<<
    estimate_mer_threshold \
      ~{if defined(file_of_mercounts) then ("-m " +  '"' + file_of_mercounts + '"') else ""}
  >>>
  parameter_meta {
    file_of_mercounts: "file of mercounts"
  }
  output {
    File out_stdout = stdout()
  }
}