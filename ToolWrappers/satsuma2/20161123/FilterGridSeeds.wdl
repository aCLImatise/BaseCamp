version 1.0

task FilterGridSeeds {
  input {
    Boolean? string_target_file
  }
  command <<<
    FilterGridSeeds \
      ~{if (string_target_file) then "-t" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    string_target_file: "<string> : target fasta file"
  }
  output {
    File out_stdout = stdout()
  }
}