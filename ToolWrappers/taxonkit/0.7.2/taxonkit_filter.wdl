version 1.0

task TaxonkitFilter {
  input {
    String? save_predictable_no_rank
    String? black_list
    Boolean? discard_no_ranks
    Boolean? discard_root
    String? equal_to
    String? higher_than
    Boolean? list_order
    Boolean? list_ranks
    String? lower_than
    File? rank_file
    Int? root_taxid
    Int? taxid_field
    Directory? data_dir
    File? line_buffered
    File? out_file
    Int? threads
    Boolean? verbose
  }
  command <<<
    taxonkit filter \
      ~{if defined(save_predictable_no_rank) then ("--save-predictable-norank " +  '"' + save_predictable_no_rank + '"') else ""} \
      ~{if defined(black_list) then ("--black-list " +  '"' + black_list + '"') else ""} \
      ~{if (discard_no_ranks) then "--discard-noranks" else ""} \
      ~{if (discard_root) then "--discard-root" else ""} \
      ~{if defined(equal_to) then ("--equal-to " +  '"' + equal_to + '"') else ""} \
      ~{if defined(higher_than) then ("--higher-than " +  '"' + higher_than + '"') else ""} \
      ~{if (list_order) then "--list-order" else ""} \
      ~{if (list_ranks) then "--list-ranks" else ""} \
      ~{if defined(lower_than) then ("--lower-than " +  '"' + lower_than + '"') else ""} \
      ~{if defined(rank_file) then ("--rank-file " +  '"' + rank_file + '"') else ""} \
      ~{if defined(root_taxid) then ("--root-taxid " +  '"' + root_taxid + '"') else ""} \
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
    save_predictable_no_rank: "save some special ranks without order,"
    black_list: "black list of ranks to discard, e.g., '-B \\\"no rank\\\" -B \\\"clade\\\""
    discard_no_ranks: "discard all ranks without order, type \\\"taxonkit filter --help\\\" for details"
    discard_root: "discard root taxid, defined by --root-taxid"
    equal_to: "output taxIDs with rank equal to some ranks, multiple values can be separated with comma \\\",\\\" (e.g., -E \\\"genus,species\\\"), or give multiple times (e.g., -E genus -E species)"
    higher_than: "output taxIDs with rank higher than a rank, exclusive with --lower-than"
    list_order: "list user defined ranks in order, from \\\"$HOME/.taxonkit/ranks.txt\\\""
    list_ranks: "list ordered ranks in taxonomy database, sorted in user defined order"
    lower_than: "output taxIDs with rank lower than a rank, exclusive with --higher-than"
    rank_file: "user-defined ordered taxonomic ranks, type \\\"taxonkit filter --help\\\" for details"
    root_taxid: "root taxid (default 1)"
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