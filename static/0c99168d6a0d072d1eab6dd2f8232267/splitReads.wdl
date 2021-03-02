version 1.0

task SplitReads {
  input {
    File? path_read_store
    File? path_overlap_store
    String? output_prefix_logging
    String? limit_processing_end
    File? ci
    File? co
    String? ignore_overlaps_more
    String? minlength
  }
  command <<<
    splitReads \
      ~{if defined(path_read_store) then ("-S " +  '"' + path_read_store + '"') else ""} \
      ~{if defined(path_overlap_store) then ("-O " +  '"' + path_overlap_store + '"') else ""} \
      ~{if defined(output_prefix_logging) then ("-o " +  '"' + output_prefix_logging + '"') else ""} \
      ~{if defined(limit_processing_end) then ("-t " +  '"' + limit_processing_end + '"') else ""} \
      ~{if defined(ci) then ("-Ci " +  '"' + ci + '"') else ""} \
      ~{if defined(co) then ("-Co " +  '"' + co + '"') else ""} \
      ~{if defined(ignore_overlaps_more) then ("-e " +  '"' + ignore_overlaps_more + '"') else ""} \
      ~{if defined(minlength) then ("-minlength " +  '"' + minlength + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_read_store: "path to read store"
    path_overlap_store: "path to overlap store"
    output_prefix_logging: "output prefix, for logging"
    limit_processing_end: "limit processing to only reads from bgn to end (inclusive)"
    ci: "path to input clear ranges"
    co: "path to ouput clear ranges"
    ignore_overlaps_more: "ignore overlaps with more than 'erate' percent error"
    minlength: "reads trimmed below this many bases are deleted"
  }
  output {
    File out_stdout = stdout()
  }
}