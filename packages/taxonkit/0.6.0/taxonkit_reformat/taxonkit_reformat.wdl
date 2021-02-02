version 1.0

task TaxonkitReformat {
  input {
    String? delimiter
    Boolean? fill_miss_rank
    String? format
    Int? lineage_field
    String? miss_rank_repl
    String? miss_rank_repl_prefix
    String? miss_taxid_repl
    Boolean? show_lineage_tax_ids
    Directory? data_dir
    File? line_buffered
    File? out_file
    Int? threads
    Boolean? verbose
  }
  command <<<
    taxonkit reformat \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if (fill_miss_rank) then "--fill-miss-rank" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(lineage_field) then ("--lineage-field " +  '"' + lineage_field + '"') else ""} \
      ~{if defined(miss_rank_repl) then ("--miss-rank-repl " +  '"' + miss_rank_repl + '"') else ""} \
      ~{if defined(miss_rank_repl_prefix) then ("--miss-rank-repl-prefix " +  '"' + miss_rank_repl_prefix + '"') else ""} \
      ~{if defined(miss_taxid_repl) then ("--miss-taxid-repl " +  '"' + miss_taxid_repl + '"') else ""} \
      ~{if (show_lineage_tax_ids) then "--show-lineage-taxids" else ""} \
      ~{if defined(data_dir) then ("--data-dir " +  '"' + data_dir + '"') else ""} \
      ~{if (line_buffered) then "--line-buffered" else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    delimiter: "field delimiter in input lineage (default \\\";\\\")"
    fill_miss_rank: "fill missing rank with original lineage information (experimental)"
    format: "output format, placeholders of rank are needed (default \\\"{k};{p};{c};{o};{f};{g};{s}\\\")"
    lineage_field: "field index of lineage. data should be tab-separated (default 2)"
    miss_rank_repl: "replacement string for missing rank, if given \\\"\\\", \\\"unclassified xxx xxx\\\" will used, where \\\"unclassified \\\" is settable by flag -p/--miss-rank-repl-prefix"
    miss_rank_repl_prefix: "prefix for estimated taxon level (default \\\"unclassified \\\")"
    miss_taxid_repl: "replacement string for missing taxid"
    show_lineage_tax_ids: "show corresponding taxids of reformated lineage"
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