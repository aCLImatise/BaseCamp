version 1.0

task Macrel {
  input {
    File? file_output
    String? o
    String? t
  }
  command <<<
    macrel \
      ~{if defined(file_output) then ("--file-output " +  '"' + file_output + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    file_output: ""
    o: ""
    t: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_output = "${in_file_output}"
  }
}