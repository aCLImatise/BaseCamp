version 1.0

task FilterTaxonList {
  input {
    String? specify_file_analysed
    String? list
    String? discard
  }
  command <<<
    filter_taxon_list \
      ~{if defined(specify_file_analysed) then ("--input " +  '"' + specify_file_analysed + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(discard) then ("--discard " +  '"' + discard + '"') else ""}
  >>>
  parameter_meta {
    specify_file_analysed: "specify SAM file to be analysed (default: STDIN)"
    list: "tab-separated CSV file with accession numbers in first column"
    discard: "keep or discard entries passing the filter criteria?"
  }
}