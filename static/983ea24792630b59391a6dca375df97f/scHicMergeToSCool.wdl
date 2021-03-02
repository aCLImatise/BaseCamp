version 1.0

task ScHicMergeToSCool {
  input {
    Array[String] matrices
    File? out_filename
  }
  command <<<
    scHicMergeToSCool \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrices: "input file(s). (default: None)"
    out_filename: "File name to save the exported matrix. (default: None)"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}