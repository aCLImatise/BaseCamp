version 1.0

task PhyloFlashBarplotR {
  input {
    Int? top_tax_a
    File? file
    File? out
    Int? palette
    String? subset
    Boolean? raw_val
    Int? scale_plot_width
  }
  command <<<
    phyloFlash_barplot_R \
      ~{if defined(top_tax_a) then ("--toptaxa " +  '"' + top_tax_a + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(subset) then ("--subset " +  '"' + subset + '"') else ""} \
      ~{if (raw_val) then "--rawval" else ""} \
      ~{if defined(scale_plot_width) then ("--scaleplotwidth " +  '"' + scale_plot_width + '"') else ""}
  >>>
  parameter_meta {
    top_tax_a: "Number of taxa to display in the barplot. By default takes the top 10\\nby total proportional abundance in the library"
    file: "CSV file containing three columns: Taxon, sample, and counts"
    out: "Name of output PDF or PNG file"
    palette: "Palette name for taxon colors. One of the qualitative palettes from the\\nColorBrewer2 set: Accent, Dark2, Paired, Pastel1, Pastel2, Set1, Set2, or Set3."
    subset: "Display only subset from this taxon (e.g. show only Bacteria). Supply\\nfull taxon string prefix, excluding trailing semicolon."
    raw_val: "Plot raw counts rather than proportions"
    scale_plot_width: "Change the plot width by this scaling factor (e.g. 2 makes it twice\\nas wide). Allows adjustment when bars are hidden because the\\nlegend labels are too long."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}