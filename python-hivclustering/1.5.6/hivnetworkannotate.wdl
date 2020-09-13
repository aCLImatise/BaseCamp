version 1.0

task Hivnetworkannotate {
  input {
    File? output_annotated_file
    Boolean? input_network_file
    String? missing__missing
    Boolean? clear
    String? index
    Boolean? in_place
    File? attributes
    File? tab
    File? csv
    Int? field_field_field
    String? var_output
    String? network
  }
  command <<<
    hivnetworkannotate \
      ~{var_output} \
      ~{network} \
      ~{if (output_annotated_file) then "-o" else ""} \
      ~{if (input_network_file) then "-n" else ""} \
      ~{if defined(missing__missing) then ("-x " +  '"' + missing__missing + '"') else ""} \
      ~{if (clear) then "--clear" else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if (in_place) then "--inplace" else ""} \
      ~{if defined(attributes) then ("--attributes " +  '"' + attributes + '"') else ""} \
      ~{if defined(tab) then ("--tab " +  '"' + tab + '"') else ""} \
      ~{if defined(csv) then ("--csv " +  '"' + csv + '"') else ""} \
      ~{if defined(field_field_field) then ("-f " +  '"' + field_field_field + '"') else ""}
  >>>
  parameter_meta {
    output_annotated_file: "[OUTPUT], --output [OUTPUT]\\nOutput the annotated JSON network file to"
    input_network_file: "[NETWORK], --network [NETWORK]\\nThe input network file to process"
    missing__missing: "MISSING, --missing MISSING MISSING\\nIf desired, provide a value to inject for nodes that\\ndo not have an attribute value specified"
    clear: "Flush existing attributes"
    index: "The name of the column that indexes records (patient\\nID); default is to index on the first column"
    in_place: "Write attributes to the input file (cannot be stdin)"
    attributes: "The JSON file with node attributes"
    tab: "A TSV file with node attributes"
    csv: "A CSV file with node attributes"
    field_field_field: "FIELD FIELD FIELD, --field FIELD FIELD FIELD FIELD\\nDescribe an argument to be added to invididual nodes\\nas \\\"name\\\" \\\"label\\\" \\\"type\\\" \\\"transform\\\"; currently\\nsupported types are \\\"String\\\", \\\"enum\\\", \\\"Date\\\",\\n\\\"Number\\\"; transform must be specified as a lambda, an\\nempty string to use an identity map, or a python style\\ndict to specify an enum; \\\"fulldate\\\" is a predefined\\noption to reformat the date using the default\\nhivtrace-viz format\\n"
    var_output: ""
    network: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_annotated_file = "${in_output_annotated_file}"
  }
}