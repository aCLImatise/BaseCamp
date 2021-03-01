version 1.0

task RImportDatapy {
  input {
    Boolean? debug
    Boolean? normalization
    Boolean? ordered_taxonomic_ranks
    File? biom_file
    File? sample_file
    File? tree_file
    File? r_data
    File? html
    File? log_file
    String? ranks
  }
  command <<<
    r_import_data_py \
      ~{ranks} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (normalization) then "--normalization" else ""} \
      ~{if (ordered_taxonomic_ranks) then "-r" else ""} \
      ~{if defined(biom_file) then ("--biomfile " +  '"' + biom_file + '"') else ""} \
      ~{if defined(sample_file) then ("--samplefile " +  '"' + sample_file + '"') else ""} \
      ~{if defined(tree_file) then ("--treefile " +  '"' + tree_file + '"') else ""} \
      ~{if defined(r_data) then ("--rdata " +  '"' + r_data + '"') else ""} \
      ~{if defined(html) then ("--html " +  '"' + html + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Keep temporary files to debug program."
    normalization: "To normalize data before analysis. Use this option if\\nyou didnt do it in FROGS Abundance normalisation.\\n[Default: False]"
    ordered_taxonomic_ranks: "[RANKS [RANKS ...]], --ranks [RANKS [RANKS ...]]\\nThe ordered taxonomic ranks levels stored in BIOM.\\nEach rank is separated by one space. [Default:\\n['Kingdom', 'Phylum', 'Class', 'Order', 'Family',\\n'Genus', 'Species']]"
    biom_file: "path to standard biom file (format: biom1). These file\\nis the result of FROGS."
    sample_file: "path to sample file (format: tabular)."
    tree_file: "path to tree file from FROGS Tree (format: Newich\\n\\\"nhx\\\" or \\\"nwk\\\" )."
    r_data: "path to store phyloseq-class object in Rdata file.\\n[Default: phyloseq_data.Rdata]"
    html: "path to store resulting html file. [Default:\\nsummary.html]"
    log_file: "This output file will contain several information on\\nexecuted commands.\\n"
    ranks: ""
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}