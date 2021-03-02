version 1.0

task Sarscov2formatter {
  input {
    File? alignment
    File? metadata
  }
  command <<<
    sarscov2formatter \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignment: "Mulitple sequence alignment file"
    metadata: "Metadata source (Use \\\"ncbi\\\" if using NCBI SARS-CoV-2\\ndata, otherwise supply tabular file of the correct\\nformat)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}