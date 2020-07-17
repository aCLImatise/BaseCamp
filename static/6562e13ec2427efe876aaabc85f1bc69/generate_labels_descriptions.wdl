version 1.0

task GenerateLabelsDescriptions.py {
  input {
    String? output_directory_generated
  }
  command <<<
    generate_labels_descriptions.py \
      ~{if defined(output_directory_generated) then ("--output " +  '"' + output_directory_generated + '"') else ""}
  >>>
  parameter_meta {
    output_directory_generated: "The output directory where the descriptions of labels is generated. Default is '.'."
  }
}