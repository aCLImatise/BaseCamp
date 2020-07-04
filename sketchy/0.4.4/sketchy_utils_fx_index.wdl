version 1.0

task SketchyUtilsFxIndex {
  input {
    File? fast_x
    String? sort_by
    File? output_sorted_read
  }
  command <<<
    sketchy utils fx-index \
      ~{if defined(fast_x) then ("--fastx " +  '"' + fast_x + '"') else ""} \
      ~{if defined(sort_by) then ("--sort_by " +  '"' + sort_by + '"') else ""} \
      ~{if defined(output_sorted_read) then ("--output " +  '"' + output_sorted_read + '"') else ""}
  >>>
  parameter_meta {
    fast_x: "Path to Fast{a,q} input file to index reads from headers [required]"
    sort_by: "Sort read index by column: runid, sampleid, barcode, name, start_time [start_time]"
    output_sorted_read: "Output sorted read index to tab-delimited file [read_index.tsv]"
  }
}