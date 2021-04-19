version 1.0

task TaxonkitLca {
  input {
    String? separate_r
    Boolean? skip_deleted
    Boolean? skip_unfound
    Int? tax_ids_field
    Directory? data_dir
    File? line_buffered
    File? out_file
    Int? threads
    Boolean? verbose
  }
  command <<<
    taxonkit lca \
      ~{if defined(separate_r) then ("--separater " +  '"' + separate_r + '"') else ""} \
      ~{if (skip_deleted) then "--skip-deleted" else ""} \
      ~{if (skip_unfound) then "--skip-unfound" else ""} \
      ~{if defined(tax_ids_field) then ("--taxids-field " +  '"' + tax_ids_field + '"') else ""} \
      ~{if defined(data_dir) then ("--data-dir " +  '"' + data_dir + '"') else ""} \
      ~{if (line_buffered) then "--line-buffered" else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/taxonkit:0.8.0--h9ee0642_0"
  }
  parameter_meta {
    separate_r: "separater for TaxIds (default \\\" \\\")"
    skip_deleted: "skip deleted TaxIds and compute with left ones"
    skip_unfound: "skip unfound TaxIds and compute with left ones"
    tax_ids_field: "field index of taxid. input data should be tab-separated (default 1)"
    data_dir: "directory containing nodes.dmp and names.dmp (default \\\"/root/.taxonkit\\\")"
    line_buffered: "use line buffering on output, i.e., immediately writing to stdin/file for every line of output"
    out_file: "out file (\\\"-\\\" for stdout, suffix .gz for gzipped out) (default \\\"-\\\")"
    threads: "number of CPUs. 4 is enough (default 2)"
    verbose: "print verbose information"
  }
  output {
    File out_stdout = stdout()
    File out_line_buffered = "${in_line_buffered}"
    File out_out_file = "${in_out_file}"
  }
}