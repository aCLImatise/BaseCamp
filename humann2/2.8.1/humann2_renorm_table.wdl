version 1.0

task Humann2RenormTable {
  input {
    String? original_output_table
    String? units
    String? mode
    String? special
    Boolean? update_s_names
    String? path_modified_output
  }
  command <<<
    humann2_renorm_table \
      ~{if defined(original_output_table) then ("--input " +  '"' + original_output_table + '"') else ""} \
      ~{if defined(units) then ("--units " +  '"' + units + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(special) then ("--special " +  '"' + special + '"') else ""} \
      ~{true="--update-snames" false="" update_s_names} \
      ~{if defined(path_modified_output) then ("--output " +  '"' + path_modified_output + '"') else ""}
  >>>
  parameter_meta {
    original_output_table: "Original output table (tsv or biom format); default=[TSV/STDIN]"
    units: "Normalization scheme: copies per million [cpm], relative abundance [relab]; default=[cpm]"
    mode: "Normalize all levels by [community] total or [levelwise] totals; default=[community]"
    special: "Include the special features UNMAPPED, UNINTEGRATED, and UNGROUPED; default=[y]"
    update_s_names: "Update '-RPK' in sample names to appropriate suffix; default=off"
    path_modified_output: "Path for modified output table; default=[STDOUT]"
  }
}