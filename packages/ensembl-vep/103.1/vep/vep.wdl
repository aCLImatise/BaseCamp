version 1.0

task Vep {
  input {
    Boolean? input_file
    File? output_file
    File? force_overwrite
    Boolean? species
    Boolean? everything
    Boolean? fork
  }
  command <<<
    vep \
      ~{if (input_file) then "--input_file" else ""} \
      ~{if (output_file) then "--output_file" else ""} \
      ~{if (force_overwrite) then "--force_overwrite" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (everything) then "--everything" else ""} \
      ~{if (fork) then "--fork" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ensembl-vep:103.1--pl526hecda079_0"
  }
  parameter_meta {
    input_file: "Input file"
    output_file: "Output file"
    force_overwrite: "Force overwriting of output file"
    species: "[species]    Species to use [default: \\\"human\\\"]"
    everything: "Shortcut switch to turn on commonly used options. See web\\ndocumentation for details [default: off]"
    fork: "[num_forks]     Use forking to improve script runtime"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_force_overwrite = "${in_force_overwrite}"
  }
}