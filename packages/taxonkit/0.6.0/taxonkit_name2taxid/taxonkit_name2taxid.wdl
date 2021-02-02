version 1.0

task TaxonkitName2taxid {
  input {
    Int? name_field
    Boolean? sci_name
    Boolean? show_rank
    Directory? data_dir
    File? line_buffered
    File? out_file
    Int? threads
    Boolean? verbose
  }
  command <<<
    taxonkit name2taxid \
      ~{if defined(name_field) then ("--name-field " +  '"' + name_field + '"') else ""} \
      ~{if (sci_name) then "--sci-name" else ""} \
      ~{if (show_rank) then "--show-rank" else ""} \
      ~{if defined(data_dir) then ("--data-dir " +  '"' + data_dir + '"') else ""} \
      ~{if (line_buffered) then "--line-buffered" else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    name_field: "field index of name. data should be tab-separated (default 1)"
    sci_name: "only searching scientific names"
    show_rank: "show rank"
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