version 1.0

task TaxonkitReformat {
  input {
    Boolean? add_prefix
    String? delimiter
    Boolean? fill_miss_rank
    String? format
    Int? lineage_field
    String? miss_rank_repl
    String? miss_rank_repl_prefix
    String? miss_taxid_repl
    Boolean? output_ambiguous_result
    String? prefix_subspecies_used
    String? prefix_strain_used
    String? prefix_c
    String? prefix_f
    String? prefix_g
    String? prefix_k
    String? prefix_o
    String? prefix_p
    String? prefix_species_used
    String? prefix_subspeciesstrain_used
    Boolean? pseudo_strain
    Boolean? show_lineage_tax_ids
    Int? taxid_field
    Boolean? trim
    Directory? data_dir
    File? line_buffered
    File? out_file
    Int? threads
    Boolean? verbose
  }
  command <<<
    taxonkit reformat \
      ~{if (add_prefix) then "--add-prefix" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if (fill_miss_rank) then "--fill-miss-rank" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(lineage_field) then ("--lineage-field " +  '"' + lineage_field + '"') else ""} \
      ~{if defined(miss_rank_repl) then ("--miss-rank-repl " +  '"' + miss_rank_repl + '"') else ""} \
      ~{if defined(miss_rank_repl_prefix) then ("--miss-rank-repl-prefix " +  '"' + miss_rank_repl_prefix + '"') else ""} \
      ~{if defined(miss_taxid_repl) then ("--miss-taxid-repl " +  '"' + miss_taxid_repl + '"') else ""} \
      ~{if (output_ambiguous_result) then "--output-ambiguous-result" else ""} \
      ~{if defined(prefix_subspecies_used) then ("--prefix-S " +  '"' + prefix_subspecies_used + '"') else ""} \
      ~{if defined(prefix_strain_used) then ("--prefix-T " +  '"' + prefix_strain_used + '"') else ""} \
      ~{if defined(prefix_c) then ("--prefix-c " +  '"' + prefix_c + '"') else ""} \
      ~{if defined(prefix_f) then ("--prefix-f " +  '"' + prefix_f + '"') else ""} \
      ~{if defined(prefix_g) then ("--prefix-g " +  '"' + prefix_g + '"') else ""} \
      ~{if defined(prefix_k) then ("--prefix-k " +  '"' + prefix_k + '"') else ""} \
      ~{if defined(prefix_o) then ("--prefix-o " +  '"' + prefix_o + '"') else ""} \
      ~{if defined(prefix_p) then ("--prefix-p " +  '"' + prefix_p + '"') else ""} \
      ~{if defined(prefix_species_used) then ("--prefix-s " +  '"' + prefix_species_used + '"') else ""} \
      ~{if defined(prefix_subspeciesstrain_used) then ("--prefix-t " +  '"' + prefix_subspeciesstrain_used + '"') else ""} \
      ~{if (pseudo_strain) then "--pseudo-strain" else ""} \
      ~{if (show_lineage_tax_ids) then "--show-lineage-taxids" else ""} \
      ~{if defined(taxid_field) then ("--taxid-field " +  '"' + taxid_field + '"') else ""} \
      ~{if (trim) then "--trim" else ""} \
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
    add_prefix: "add prefixes for all ranks, single prefix for a rank is defined by flag --prefix-X"
    delimiter: "field delimiter in input lineage (default \\\";\\\")"
    fill_miss_rank: "fill missing rank with lineage information of the next higher rank"
    format: "output format, placeholders of rank are needed (default \\\"{k};{p};{c};{o};{f};{g};{s}\\\")"
    lineage_field: "field index of lineage. data should be tab-separated (default 2)"
    miss_rank_repl: "replacement string for missing rank"
    miss_rank_repl_prefix: "prefix for estimated taxon level (default \\\"unclassified \\\")"
    miss_taxid_repl: "replacement string for missing taxid"
    output_ambiguous_result: "output one of the ambigous result"
    prefix_subspecies_used: "prefix for subspecies, used along with flag -P/--add-prefix (default \\\"S__\\\")"
    prefix_strain_used: "prefix for strain, used along with flag -P/--add-prefix (default \\\"T__\\\")"
    prefix_c: "prefix for class, used along with flag -P/--add-prefix (default \\\"c__\\\")"
    prefix_f: "prefix for family, used along with flag -P/--add-prefix (default \\\"f__\\\")"
    prefix_g: "prefix for genus, used along with flag -P/--add-prefix (default \\\"g__\\\")"
    prefix_k: "prefix for superkingdom, used along with flag -P/--add-prefix (default \\\"k__\\\")"
    prefix_o: "prefix for order, used along with flag -P/--add-prefix (default \\\"o__\\\")"
    prefix_p: "prefix for phylum, used along with flag -P/--add-prefix (default \\\"p__\\\")"
    prefix_species_used: "prefix for species, used along with flag -P/--add-prefix (default \\\"s__\\\")"
    prefix_subspeciesstrain_used: "prefix for subspecies/strain, used along with flag -P/--add-prefix (default \\\"t__\\\")"
    pseudo_strain: "use the node with lowest rank as strain name, only if which rank is lower than \\\"species\\\" and not \\\"subpecies\\\" nor \\\"strain\\\". It affects {t}, {S}, {T}. This flag needs flag -F"
    show_lineage_tax_ids: "show corresponding taxids of reformated lineage"
    taxid_field: "field index of taxid. input data should be tab-separated. it overrides -i/--lineage-field"
    trim: "do not fill missing rank lower than current rank"
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