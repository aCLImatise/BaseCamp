version 1.0

task Metaxa2Dc {
  input {
    String? o
    String input_files
  }
  command <<<
    metaxa2_dc \
      ~{input_files} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    input_files: ""
  }
}