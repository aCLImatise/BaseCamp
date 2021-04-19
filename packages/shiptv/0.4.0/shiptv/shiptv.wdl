version 1.0

task Shiptv {
  input {
    File? newick
    File? output_html
    File? output_newick
    File? ref_genomes_genbank
    File? output_metadata_table
    File? leaf_list
    File? genbank_metadata_fields
    File? metadata
    File? metadata_fields_in_order
    Boolean? no_fix_metadata
    Float? collapse_support
    Boolean? no_highlight_user_samples
    String? out_group
    Boolean? no_midpoint_root
    Boolean? no_verbose
    Boolean? install_completion
    Boolean? show_completion
  }
  command <<<
    shiptv \
      ~{if defined(newick) then ("--newick " +  '"' + newick + '"') else ""} \
      ~{if defined(output_html) then ("--output-html " +  '"' + output_html + '"') else ""} \
      ~{if defined(output_newick) then ("--output-newick " +  '"' + output_newick + '"') else ""} \
      ~{if defined(ref_genomes_genbank) then ("--ref-genomes-genbank " +  '"' + ref_genomes_genbank + '"') else ""} \
      ~{if defined(output_metadata_table) then ("--output-metadata-table " +  '"' + output_metadata_table + '"') else ""} \
      ~{if defined(leaf_list) then ("--leaflist " +  '"' + leaf_list + '"') else ""} \
      ~{if defined(genbank_metadata_fields) then ("--genbank-metadata-fields " +  '"' + genbank_metadata_fields + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(metadata_fields_in_order) then ("--metadata-fields-in-order " +  '"' + metadata_fields_in_order + '"') else ""} \
      ~{if (no_fix_metadata) then "--no-fix-metadata" else ""} \
      ~{if defined(collapse_support) then ("--collapse-support " +  '"' + collapse_support + '"') else ""} \
      ~{if (no_highlight_user_samples) then "--no-highlight-user-samples" else ""} \
      ~{if defined(out_group) then ("--outgroup " +  '"' + out_group + '"') else ""} \
      ~{if (no_midpoint_root) then "--no-midpoint-root" else ""} \
      ~{if (no_verbose) then "--no-verbose" else ""} \
      ~{if (install_completion) then "--install-completion" else ""} \
      ~{if (show_completion) then "--show-completion" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/shiptv:0.4.0--pyh5e36f6f_0"
  }
  parameter_meta {
    newick: "Phylogenetic tree Newick file  [required]"
    output_html: "Output HTML tree path  [required]"
    output_newick: "Output Newick file"
    ref_genomes_genbank: "Reference genome sequences Genbank file"
    output_metadata_table: "Output metadata table path"
    leaf_list: "Optional leaf names to select from\\nphylogenetic tree for pruned tree\\nvisualization. One leaf name per line."
    genbank_metadata_fields: "Optional fields to extract from Genbank\\nsource metadata. One field per line."
    metadata: "Optional tab-delimited metadata for user\\nsamples to join with metadata derived from\\nreference genome sequences Genbank file.\\nSample IDs must be in the first column."
    metadata_fields_in_order: "Optional list of fields in order to output\\nin metadata table and HTML tree\\nvisualization. One field per line."
    no_fix_metadata: "Try to automatically fix metadata from\\nreference Genbank file.  [default: True]"
    collapse_support: "Collapse internal branches below specified\\nbootstrap support value (default -1 for no\\ncollapsing)  [default: -1.0]"
    no_highlight_user_samples: "Highlight user samples with metadata field\\nin tree.  [default: False]"
    out_group: "Tree outgroup taxa"
    no_midpoint_root: "Set midpoint root  [default: False]"
    no_verbose: "Verbose logs  [default: False]"
    install_completion: "Install completion for the current shell."
    show_completion: "Show completion for the current shell, to\\ncopy it or customize the installation."
  }
  output {
    File out_stdout = stdout()
    File out_output_html = "${in_output_html}"
    File out_output_newick = "${in_output_newick}"
    File out_output_metadata_table = "${in_output_metadata_table}"
  }
}