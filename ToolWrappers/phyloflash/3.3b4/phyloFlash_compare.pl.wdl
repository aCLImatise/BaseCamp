version 1.0

task PhyloFlashComparepl {
  input {
    String? zip
    Boolean? all_zip
    Boolean? use_sam
    String? type_run_options
    String? out
    String? out_fmt
    Int? level
    Boolean? keep_tmp
    Boolean? log
    Int? display_tax_a
    Int? barplot_palette
    String? barplot_subset
    Boolean? barplot_raw_val
    Boolean? barplot_scale_plot_width
    String? cluster_samples
    String? cluster_tax_a
    Boolean? long_tax_names
    Int? min_ntu_count
    String heat_map
    String format_dot
  }
  command <<<
    phyloFlash_compare_pl \
      ~{heat_map} \
      ~{format_dot} \
      ~{if defined(zip) then ("--zip " +  '"' + zip + '"') else ""} \
      ~{if (all_zip) then "--allzip" else ""} \
      ~{if (use_sam) then "--use_SAM" else ""} \
      ~{if defined(type_run_options) then ("--task " +  '"' + type_run_options + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(out_fmt) then ("--outfmt " +  '"' + out_fmt + '"') else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{if (keep_tmp) then "--keeptmp" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if defined(display_tax_a) then ("--displaytaxa " +  '"' + display_tax_a + '"') else ""} \
      ~{if defined(barplot_palette) then ("--barplot_palette " +  '"' + barplot_palette + '"') else ""} \
      ~{if defined(barplot_subset) then ("--barplot_subset " +  '"' + barplot_subset + '"') else ""} \
      ~{if (barplot_raw_val) then "--barplot_rawval" else ""} \
      ~{if (barplot_scale_plot_width) then "--barplot_scaleplotwidth" else ""} \
      ~{if defined(cluster_samples) then ("--cluster-samples " +  '"' + cluster_samples + '"') else ""} \
      ~{if defined(cluster_tax_a) then ("--cluster-taxa " +  '"' + cluster_tax_a + '"') else ""} \
      ~{if (long_tax_names) then "--long-taxnames" else ""} \
      ~{if defined(min_ntu_count) then ("--min-ntu-count " +  '"' + min_ntu_count + '"') else ""}
  >>>
  parameter_meta {
    zip: "Comma-separated list of tar.gz archives from phyloFlash runs.\\nThese will be parsed to search for the\\n[LIBNAME].phyloFlash.NTUabundance.csv files within the archive,\\nto extract the NTU classifications. This assumes that the\\narchive filenames are named [LIBNAME].phyloFlash.tar.gz, and\\nthat the LIBNAME matches the contents of the archive."
    all_zip: "Use all phyloFlash tar.gz archives in the current folder (by\\nmatching filename *.phyloFlash.tar.gz) for a comparison run.\\nOverrides anything passed to option --zip."
    use_sam: "Ignore NTU abundance tables in CSV format, and recalculate the\\nNTU abundances from SAM files in the compressed tar.gz\\nphyloFlash archives. Useful if e.g. phyloFlash was originally\\ncalled to summarize the taxonomy at a higher level than you want\\nto use for the comparison.\\nOnly works if the tar.gz archives from phyloFlash runs are\\nspecified with the --zip option above.\\nDefault: No."
    type_run_options: "Type of analysis to be run. Options: \\\"heatmap\\\", \\\"barplot\\\",\\n\\\"matrix\\\", \\\"ntu_table\\\" or a recognizable substring thereof.\\nSupply more than one option as comma- separated list.\\nDefault: None"
    out: "Prefix for output files.\\nDefault: \\\"test.phyloFlash_compare\\\""
    out_fmt: "Format for plots (tasks 'barplot' and 'heatmap' only). Options:\\n\\\"pdf\\\", \\\"png\\\"\\nDefault: \\\"pdf\\\""
    level: "Taxonomic level to perform the comparison. Must be an integer\\nbetween 1 and 7.\\nDefault: 4 ('Order')"
    keep_tmp: "Keep temporary files\\nDefault: No"
    log: "Save log file to file [OUTPREFIX].log\\nDefault: No"
    display_tax_a: "Number of top taxa to display in barplot. Integer between 3 and\\n12 is preferable.\\nDefault: 5"
    barplot_palette: "Palette to color taxa in barplot. Should be one of the\\nqualitative ColorBrewer2 palettes: Accent, Dark2, Paired,\\nPastel1, Pastel2, Set1, Set2, or Set3.\\nDefault: \\\"Set3\\\""
    barplot_subset: "Display only the subset from this taxon, e.g. \\\"Bacteria\\\". Should\\nbe a taxon string excluding trailing semicolon, e.g.\\n\\\"Bacteria;Proteobacteria\\\".\\nDefault: None (show all)"
    barplot_raw_val: "Logical: Display counts rather than proportions in barplot, i.e.\\nbars will not be rescaled to 100% for each sample.\\nDefault: False"
    barplot_scale_plot_width: "Numeric: Change plot width by this scaling factor (e.g. 2 makes\\nit twice as wide). Allows adjustment when bars are hidden\\nbecause the legend labels are too long.\\nDefault: 1"
    cluster_samples: "Clustering method to use for clustering/sorting samples in\\nheatmap. Options: \\\"alpha\\\", \\\"ward.D\\\", \\\"single\\\", \\\"complete\\\",\\n\\\"average\\\", \\\"mcquitty\\\", \\\"median\\\", \\\"centroid\\\", or \\\"custom\\\".\\n\\\"custom\\\" will use the Unifrac-like abundance weighted taxonomic\\ndistances (the distance matrix can be separately output with\\n--task matrix). This is an experimental (unpublished) metric\\nsimilar to Unifrac, but using a taxonomy tree instead of a real\\nphylogeny.\\nDefault: \\\"ward.D\\\""
    cluster_tax_a: "Clustering method to use for clustering/sorting taxa. Options:\\n\\\"alpha\\\", \\\"ward\\\", \\\"single\\\", \\\"complete\\\", \\\"average\\\", \\\"mcquitty\\\",\\n\\\"median\\\", \\\"centroid\\\".\\nDefault: \\\"ward.D\\\""
    long_tax_names: "Do not shorten taxa names to two last groups"
    min_ntu_count: "Sum up NTUs with fewer counts into a pseudo-NTU \\\"Other\\\".\\nDefault: 50\\n"
    heat_map: "# phyloFlash tar.gz archives as input"
    format_dot: "--csv FILES\\nComma-separated list of NTU abundance tables from phyloFlash\\nruns. The files should be named\\n[LIBNAME].phyloFlash.NTUabundance.csv or\\n[LIBNAME].phyloFlash.NTUfull_abundance.csv"
  }
  output {
    File out_stdout = stdout()
  }
}