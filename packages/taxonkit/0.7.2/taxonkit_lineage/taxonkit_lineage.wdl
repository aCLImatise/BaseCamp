version 1.0

task TaxonkitLineage {
  input {
    String? delimiter
    Boolean? no_lineage
    Boolean? show_lineage_ranks
    Boolean? show_lineage_tax_ids
    Boolean? show_name
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
      ~{if (no_lineage) then "--no-lineage" else ""} \
      ~{if (show_lineage_ranks) then "--show-lineage-ranks" else ""} \
      ~{if (show_lineage_tax_ids) then "--show-lineage-taxids" else ""} \
      ~{if (show_name) then "--show-name" else ""} \
      ~{if (show_rank) then "--show-rank" else ""} \
      ~{if (show_status_code) then "--show-status-code" else ""} \
      ~{if defined(taxid_field) then ("--taxid-field " +  '"' + taxid_field + '"') else ""} \
      ~{if defined(data_dir) then ("--data-dir " +  '"' + data_dir + '"') else ""} \
      ~{if (line_buffered) then "--line-buffered" else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/taxonkit:0.7.2--0"
  }
  parameter_meta {
    delimiter: "field delimiter in lineage (default \\\";\\\")"
    no_lineage: "do not show lineage, when user just want names or/and ranks"
    show_lineage_ranks: "appending ranks of all levels"
    show_lineage_tax_ids: "appending lineage consisting of taxids"
    show_name: "appending scientific name"
    show_rank: "appending rank of taxids"
    show_status_code: "show status code before lineage"
    taxid_field: "field index of taxid. input data should be tab-separated (default 1)"
    data_dir: "directory containing nodes.dmp and names.dmp (default \\\"/root/.taxonkit\\\")"
    line_buffered: "use line buffering on output, i.e., immediately writing to stdin/file for every line of output"
    out_file: "out file (\\\"-\\\" for stdout, suffix .gz for gzipped out) (default \\\"-\\\")"
    threads: "number of CPUs. 4 is enough (default 4)"
    verbose: "print verbose information"
  }
  output {
    File out_stdout = stdout()
    File out_line_buffered = "${in_line_buffered}"
    File out_out_file = "${in_out_file}"
  }
}