version 1.0

task Haplo {
  input {
    Boolean? input_file
    File? output_file
    File? force_overwrite
    Boolean? species
  }
  command <<<
    haplo \
      ~{if (input_file) then "--input_file" else ""} \
      ~{if (output_file) then "--output_file" else ""} \
      ~{if (force_overwrite) then "--force_overwrite" else ""} \
      ~{if (species) then "--species" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ensembl-vep:103.1--pl526hecda079_0"
  }
  parameter_meta {
    input_file: "Input file"
    output_file: "Output file"
    force_overwrite: "Force overwriting of output file"
    species: "[species]    Species to use [default: \\\"human\\\"]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_force_overwrite = "${in_force_overwrite}"
  }
}