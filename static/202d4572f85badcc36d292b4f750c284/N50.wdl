version 1.0

task N50.pl {
  input {
    String? g
    String input_file
  }
  command <<<
    N50.pl \
      ~{input_file} \
      ~{if defined(g) then ("-G " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    g: ""
    input_file: ""
  }
}