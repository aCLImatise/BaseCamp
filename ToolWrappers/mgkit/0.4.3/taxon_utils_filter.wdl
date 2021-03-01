version 1.0

task TaxonutilsFilter {
  input {
    File? taxonomy
    Int? include_tax_on_id
    String? include_tax_on_name
    Int? exclude_tax_on_id
    String? exclude_tax_on_name
    Boolean? progress
    String? input_file
    String? output_file
  }
  command <<<
    taxon_utils filter \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if defined(include_tax_on_id) then ("--include-taxon-id " +  '"' + include_tax_on_id + '"') else ""} \
      ~{if defined(include_tax_on_name) then ("--include-taxon-name " +  '"' + include_tax_on_name + '"') else ""} \
      ~{if defined(exclude_tax_on_id) then ("--exclude-taxon-id " +  '"' + exclude_tax_on_id + '"') else ""} \
      ~{if defined(exclude_tax_on_name) then ("--exclude-taxon-name " +  '"' + exclude_tax_on_name + '"') else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    taxonomy: "Taxonomy file  [required]"
    include_tax_on_id: "Include only taxon_ids"
    include_tax_on_name: "Include only taxon_names"
    exclude_tax_on_id: "Exclude taxon_ids"
    exclude_tax_on_name: "Exclude taxon_names"
    progress: "Shows Progress Bar"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}