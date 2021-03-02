version 1.0

task Humann2RenameTable {
  input {
    String? original_output_table
    String? names
    String? custom
    Boolean? simplify
    File? path_modified_output
  }
  command <<<
    humann2_rename_table \
      ~{if defined(original_output_table) then ("--input " +  '"' + original_output_table + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(custom) then ("--custom " +  '"' + custom + '"') else ""} \
      ~{if (simplify) then "--simplify" else ""} \
      ~{if defined(path_modified_output) then ("--output " +  '"' + path_modified_output + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    original_output_table: "Original output table (tsv or biom format); default=[TSV/STDIN]"
    names: "Table features that can be renamed with included data files"
    custom: "Custom mapping of feature IDs to full names (.tsv or .tsv.gz)"
    simplify: "Remove non-alphanumeric characters from names"
    path_modified_output: "Path for modified output table; default=[STDOUT]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_path_modified_output = "${in_path_modified_output}"
  }
}