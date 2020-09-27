version 1.0

task TaxonkitLineage {
  input {
    String? delimiter
    Boolean? show_lineage_tax_ids
    Boolean? show_rank
    Boolean? show_status_code
    Int? taxid_field
    Directory? data_dir
    File? line_buffered
    File? out_file
    Int? threads
    Boolean? verbose
  }
  command <<<
    taxonkit lineage \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if (show_lineage_tax_ids) then "--show-lineage-taxids" else ""} \
      ~{if (show_rank) then "--show-rank" else ""} \
      ~{if (show_status_code) then "--show-status-code" else ""} \
      ~{if defined(taxid_field) then ("--taxid-field " +  '"' + taxid_field + '"') else ""} \
      ~{if defined(data_dir) then ("--data-dir " +  '"' + data_dir + '"') else ""} \
      ~{if (line_buffered) then "--line-buffered" else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    delimiter: "field delimiter in lineage (default \\\";\\\")"
    show_lineage_tax_ids: "appending lineage consisting of taxids"
    show_rank: "appending rank of taxids"
    show_status_code: "show status code between lineage"
    taxid_field: "field index of taxid. data should be tab-separated (default 1)"
    data_dir: "directory containing nodes.dmp and names.dmp (default \\\"/root/.taxonkit\\\")"
    line_buffered: "use line buffering on output, i.e., immediately writing to stdin/file for every line of output"
    out_file: "out file (\\\"-\\\" for stdout, suffix .gz for gzipped out) (default \\\"-\\\")"
    threads: "number of CPUs. 2 is enough (default value: 1 for single-CPU PC, 2 for others) (default 2)"
    verbose: "print verbose information"
  }
  output {
    File out_stdout = stdout()
    File out_line_buffered = "${in_line_buffered}"
    File out_out_file = "${in_out_file}"
  }
}