version 1.0

task Lengthspy {
  input {
    File? input_file
  }
  command <<<
    Lengths_py \
      ~{if defined(input_file) then ("--inputfile " +  '"' + input_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "fasta file\\n"
  }
  output {
    File out_stdout = stdout()
  }
}