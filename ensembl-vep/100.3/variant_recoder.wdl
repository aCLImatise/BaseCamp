version 1.0

task VariantRecoder {
  input {
    Boolean? input_data
    Boolean? input_file
    Boolean? species
    Boolean? pretty
    String ensembl
    String ensembl_func_gen
    String ensembl_io
    String ensembl_variation
    String ensembl_vep
  }
  command <<<
    variant_recoder \
      ~{ensembl} \
      ~{ensembl_func_gen} \
      ~{ensembl_io} \
      ~{ensembl_variation} \
      ~{ensembl_vep} \
      ~{if (input_data) then "--input_data" else ""} \
      ~{if (input_file) then "--input_file" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (pretty) then "--pretty" else ""}
  >>>
  parameter_meta {
    input_data: "| --id    Input as string"
    input_file: "| -i      Input file"
    species: "[species]    Species to use [default: \\\"human\\\"]"
    pretty: "Print prettified JSON"
    ensembl: ": 100.171092c"
    ensembl_func_gen: ": 100.f0c3948"
    ensembl_io: ": 100.f87ae4f"
    ensembl_variation: ": 100.b220ff4"
    ensembl_vep: ": 100.3"
  }
  output {
    File out_stdout = stdout()
  }
}