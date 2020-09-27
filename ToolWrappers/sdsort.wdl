version 1.0

task Sdsort {
  input {
    Boolean? numeric_sort_default
    Boolean? descending_sort_default
    Boolean? specifies_sort_field
    Boolean? fast_mode_sorts
    Boolean? id
    String? data_field
    String? sd_files
  }
  command <<<
    sdsort \
      ~{data_field} \
      ~{sd_files} \
      ~{if (numeric_sort_default) then "-n" else ""} \
      ~{if (descending_sort_default) then "-r" else ""} \
      ~{if (specifies_sort_field) then "-f" else ""} \
      ~{if (fast_mode_sorts) then "-s" else ""} \
      ~{if (id) then "-id" else ""}
  >>>
  parameter_meta {
    numeric_sort_default: "numeric sort (default is text sort)"
    descending_sort_default: "descending sort (default is ascending sort)"
    specifies_sort_field: "<DataField>   specifies sort field"
    fast_mode_sorts: "fast mode. Sorts the records for each named compound independently (must be consecutive)"
    id: "<NameField>  specifies compound name field (default = 1st title line)"
    data_field: ""
    sd_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}