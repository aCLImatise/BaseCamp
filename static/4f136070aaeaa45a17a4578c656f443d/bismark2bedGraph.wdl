version 1.0

task Bismark2bedGraph {
  input {
    String? o
    String? methylation
    String? extractor
    String? var_input
    File? files
  }
  command <<<
    bismark2bedGraph \
      ~{methylation} \
      ~{extractor} \
      ~{var_input} \
      ~{files} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    methylation: ""
    extractor: ""
    var_input: ""
    files: ""
  }
}