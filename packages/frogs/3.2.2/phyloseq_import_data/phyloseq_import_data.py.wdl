version 1.0

task PhyloseqImportDatapy {
  input {
    Boolean? debug
    Boolean? normalisation
    Boolean? ordered_taxonomic_ranks
    File? biom_file
    File? sample_file
    File? tree_file
    File? r_data
    File? html
    File? log_file
  }
  command <<<
    phyloseq_import_data_py \
      ~{if (debug) then "--debug" else ""} \
      ~{if (normalisation) then "--normalisation" else ""} \
      ~{if (ordered_taxonomic_ranks) then "-r" else ""} \
      ~{if defined(biom_file) then ("--biomfile " +  '"' + biom_file + '"') else ""} \
      ~{if defined(sample_file) then ("--samplefile " +  '"' + sample_file + '"') else ""} \
      ~{if defined(tree_file) then ("--treefile " +  '"' + tree_file + '"') else ""} \
      ~{if defined(r_data) then ("--rdata " +  '"' + r_data + '"') else ""} \
      ~{if defined(html) then ("--html " +  '"' + html + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.2--py37_0"
  }
  parameter_meta {
    debug: "Keep temporary files to debug program."
    normalisation: "To normalise data before analysis. Use this option if\\nyou didnt do it in FROGS Abundance normalisation.\\n[Default: False]"
    ordered_taxonomic_ranks: "[RANKS [RANKS ...]], --ranks [RANKS [RANKS ...]]\\nThe ordered taxonomic ranks levels stored in BIOM.\\nEach rank is separated by one space. [Default:\\n['Kingdom', 'Phylum', 'Class', 'Order', 'Family',\\n'Genus', 'Species']]"
    biom_file: "path to the abundance BIOM file."
    sample_file: "path to sample file (format: TSV)."
    tree_file: "path to tree file from FROGS Tree (format: Newick\\n\\\"nhx\\\" or \\\"nwk\\\" )."
    r_data: "path to store phyloseq-class object in Rdata file.\\n[Default: phyloseq_data.Rdata]"
    html: "The HTML file containing the graphs. [Default:\\nphyloseq_import_summary.nb.html]"
    log_file: "This output file will contain several informations on\\nexecuted commands.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}