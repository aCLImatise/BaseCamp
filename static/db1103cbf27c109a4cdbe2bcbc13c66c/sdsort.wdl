version 1.0

task Sdsort {
  input {
    Boolean? numeric_sort_default
    Boolean? descending_sort_default
    Boolean? datafield_specifies_field
    Boolean? fast_mode_sorts
    Boolean? id
    String? data_field
    String? sd_files
  }
  command <<<
    sdsort \
      ~{data_field} \
      ~{sd_files} \
      ~{true="-n" false="" numeric_sort_default} \
      ~{true="-r" false="" descending_sort_default} \
      ~{true="-f" false="" datafield_specifies_field} \
      ~{true="-s" false="" fast_mode_sorts} \
      ~{true="-id" false="" id}
  >>>
  parameter_meta {
    numeric_sort_default: "numeric sort (default is text sort)"
    descending_sort_default: "descending sort (default is ascending sort)"
    datafield_specifies_field: "<DataField>   specifies sort field"
    fast_mode_sorts: "fast mode. Sorts the records for each named compound independently (must be consecutive)"
    id: "<NameField>  specifies compound name field (default = 1st title line)"
    data_field: ""
    sd_files: ""
  }
}