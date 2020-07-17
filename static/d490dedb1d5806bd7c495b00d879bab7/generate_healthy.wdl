version 1.0

task GenerateHealthy.py {
  input {
    String? organism
    String? output_directory_allowed
  }
  command <<<
    generate_healthy.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_allowed) then ("--output " +  '"' + output_directory_allowed + '"') else ""}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the list of allowed candidate fusion genes is generated, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    output_directory_allowed: "The output directory where the list of allowed candidate fusion genes is generated. Default is '.'."
  }
}