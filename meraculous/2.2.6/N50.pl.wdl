version 1.0

task N50pl {
  input {
    Int? g
    File input_file
  }
  command <<<
    N50_pl \
      ~{input_file} \
      ~{if defined(g) then ("-G " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    g: ""
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}