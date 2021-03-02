version 1.0

task TransposeBiompy {
  input {
    File? input_biom_fp
    File? mapping
    String? map_category
    File? output_biom_fp
  }
  command <<<
    transpose_biom_py \
      ~{if defined(input_biom_fp) then ("--input_biom_fp " +  '"' + input_biom_fp + '"') else ""} \
      ~{if defined(mapping) then ("--mapping " +  '"' + mapping + '"') else ""} \
      ~{if defined(map_category) then ("--map_category " +  '"' + map_category + '"') else ""} \
      ~{if defined(output_biom_fp) then ("--output_biom_fp " +  '"' + output_biom_fp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_biom_fp: "The BIOM-format file."
    mapping: "The mapping file specifying group information for each\\nsample."
    map_category: "A mapping category, such as TreatmentType, that will\\nbe used to split the data into separate BIOM files;\\none for each value found in the category."
    output_biom_fp: "The BIOM-format file to write."
  }
  output {
    File out_stdout = stdout()
  }
}