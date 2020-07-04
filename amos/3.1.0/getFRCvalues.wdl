version 1.0

task GetFRCvalues {
  input {
    String? g
    String? b
    String assembler
  }
  command <<<
    getFRCvalues \
      ~{assembler} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    g: ""
    b: ""
    assembler: ""
  }
}