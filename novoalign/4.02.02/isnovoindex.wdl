version 1.0

task Isnovoindex {
  input {
    Int? filename_valid_novoindex
    File filename
  }
  command <<<
    isnovoindex \
      ~{filename} \
      ~{if defined(filename_valid_novoindex) then ("-1 " +  '"' + filename_valid_novoindex + '"') else ""}
  >>>
  parameter_meta {
    filename_valid_novoindex: "filename is not a valid novoindex\\n0 is a nucleotide space index\\n1 is a bisulphite nucleotide index\\n2 is a colour space index\\n"
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}