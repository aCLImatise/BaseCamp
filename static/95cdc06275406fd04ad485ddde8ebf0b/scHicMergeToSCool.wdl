version 1.0

task ScHicMergeToSCool {
  input {
    Array[String] matrices
    String? out_filename
  }
  command <<<
    scHicMergeToSCool \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""}
  >>>
  parameter_meta {
    matrices: "input file(s). (default: None)"
    out_filename: "File name to save the exported matrix. (default: None)"
  }
}