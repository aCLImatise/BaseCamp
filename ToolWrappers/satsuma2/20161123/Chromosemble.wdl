version 1.0

task Chromosemble {
  input {
    Boolean? string_target_file
  }
  command <<<
    Chromosemble \
      ~{if (string_target_file) then "-t" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    string_target_file: "<string> : target fasta file (in chromosome coordinates)"
  }
  output {
    File out_stdout = stdout()
  }
}