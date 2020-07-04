version 1.0

task GenerateRrnaUnit.py {
  input {
    String? organism
    String? output_directory_generated
  }
  command <<<
    generate_rrna_unit.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_generated) then ("--output " +  '"' + output_directory_generated + '"') else ""}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the ribosomal DNA complete repeating unit is generated, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    output_directory_generated: "The output directory where the ribosomal DNA complete repeating unit is generated. Default is '.'."
  }
}