version 1.0

task Deeplc {
  input {
    File? file_cal
    File? file_pred
  }
  command <<<
    deeplc \
      ~{if defined(file_cal) then ("--file_cal " +  '"' + file_cal + '"') else ""} \
      ~{if defined(file_pred) then ("--file_pred " +  '"' + file_pred + '"') else ""}
  >>>
  parameter_meta {
    file_cal: ""
    file_pred: ""
  }
  output {
    File out_stdout = stdout()
  }
}