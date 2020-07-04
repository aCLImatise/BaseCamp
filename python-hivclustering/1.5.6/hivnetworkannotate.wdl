version 1.0

task Hivnetworkannotate {
  input {
    Boolean? output_annotated_file
    Boolean? input_network_file
    String? missing__missing
    Boolean? clear
    String? index
    Boolean? in_place
    String? attributes
    String? tab
    String? csv
    String? field_field_field
    String? var_output
    String? network
  }
  command <<<
    hivnetworkannotate \
      ~{var_output} \
      ~{network} \
      ~{true="-o" false="" output_annotated_file} \
      ~{true="-n" false="" input_network_file} \
      ~{if defined(missing__missing) then ("-x " +  '"' + missing__missing + '"') else ""} \
      ~{true="--clear" false="" clear} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{true="--inplace" false="" in_place} \
      ~{if defined(attributes) then ("--attributes " +  '"' + attributes + '"') else ""} \
      ~{if defined(tab) then ("--tab " +  '"' + tab + '"') else ""} \
      ~{if defined(csv) then ("--csv " +  '"' + csv + '"') else ""} \
      ~{if defined(field_field_field) then ("-f " +  '"' + field_field_field + '"') else ""}
  >>>
  parameter_meta {
    output_annotated_file: "[OUTPUT], --output [OUTPUT] Output the annotated JSON network file to"
    input_network_file: "[NETWORK], --network [NETWORK] The input network file to process"
    missing__missing: "MISSING, --missing MISSING MISSING If desired, provide a value to inject for nodes that do not have an attribute value specified"
    clear: "Flush existing attributes"
    index: "The name of the column that indexes records (patient ID); default is to index on the first column"
    in_place: "Write attributes to the input file (cannot be stdin)"
    attributes: "The JSON file with node attributes"
    tab: "A TSV file with node attributes"
    csv: "A CSV file with node attributes"
    field_field_field: "FIELD FIELD FIELD, --field FIELD FIELD FIELD FIELD Describe an argument to be added to invididual nodes as \"name\" \"label\" \"type\" \"transform\"; currently supported types are \"String\", \"enum\", \"Date\", \"Number\"; transform must be specified as a lambda, an empty string to use an identity map, or a python style dict to specify an enum; \"fulldate\" is a predefined option to reformat the date using the default hivtrace-viz format"
    var_output: ""
    network: ""
  }
}