version 1.0

task PpaniniRenameContigs {
  input {
    File? var_input
    File? var_output
  }
  command <<<
    ppanini_rename_contigs \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""}
  >>>
  parameter_meta {
    var_input: "fasta file"
    var_output: "fasta file\\n"
  }
  output {
    File out_stdout = stdout()
  }
}