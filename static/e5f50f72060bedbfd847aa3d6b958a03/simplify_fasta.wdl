version 1.0

task Simplifyfasta {
  input {
    Boolean? specify_name_input
    File? specify_name_output
  }
  command <<<
    simplify_fasta \
      ~{if (specify_name_input) then "-i" else ""} \
      ~{if (specify_name_output) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_name_input: "Specify the name of the input file"
    specify_name_output: "Specify the name for the output file"
  }
  output {
    File out_stdout = stdout()
    File out_specify_name_output = "${in_specify_name_output}"
  }
}