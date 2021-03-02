version 1.0

task VariantRecoder {
  input {
    Boolean? input_data
    Boolean? input_file
    Boolean? species
    Boolean? pretty
  }
  command <<<
    variant_recoder \
      ~{if (input_data) then "--input_data" else ""} \
      ~{if (input_file) then "--input_file" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (pretty) then "--pretty" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ensembl-vep:103.1--pl526hecda079_0"
  }
  parameter_meta {
    input_data: "Input as string"
    input_file: "Input file"
    species: "[species]    Species to use [default: \\\"human\\\"]"
    pretty: "Print prettified JSON"
  }
  output {
    File out_stdout = stdout()
  }
}