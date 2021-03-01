version 1.0

task SketchyUtilsFxindex {
  input {
    File? fast_x
    String? sort_by
    File? output_sorted_read
  }
  command <<<
    sketchy utils fx_index \
      ~{if defined(fast_x) then ("--fastx " +  '"' + fast_x + '"') else ""} \
      ~{if defined(sort_by) then ("--sort_by " +  '"' + sort_by + '"') else ""} \
      ~{if defined(output_sorted_read) then ("--output " +  '"' + output_sorted_read + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_x: "Path to Fast{a,q} input file to index reads from headers\\n[required]"
    sort_by: "Sort read index by column: runid, sampleid, barcode,\\nname, start_time [start_time]"
    output_sorted_read: "Output sorted read index to tab-delimited file\\n[read_index.tsv]"
  }
  output {
    File out_stdout = stdout()
    File out_output_sorted_read = "${in_output_sorted_read}"
  }
}