version 1.0

task Edalign {
  input {
    File? mandatory_path_first
    File? mandatory_path_second
    Array[File] ref
  }
  command <<<
    edalign \
      ~{if defined(mandatory_path_first) then ("-a " +  '"' + mandatory_path_first + '"') else ""} \
      ~{if defined(mandatory_path_second) then ("-b " +  '"' + mandatory_path_second + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mandatory_path_first: "Mandatory, path to first input file"
    mandatory_path_second: "Mandatory, path to second input file"
    ref: ""
  }
  output {
    File out_stdout = stdout()
  }
}