version 1.0

task TaxmapperPlot {
  input {
    Array[String] tax_a
    Array[String] samples
    File? freq
    File? counts
    File? plot
  }
  command <<<
    taxmapper plot \
      ~{if defined(tax_a) then ("--taxa " +  '"' + tax_a + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(freq) then ("--freq " +  '"' + freq + '"') else ""} \
      ~{if defined(counts) then ("--counts " +  '"' + counts + '"') else ""} \
      ~{if defined(plot) then ("--plot " +  '"' + plot + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tax_a: "Taxonomy file(s), counted taxa for a taxonomic\\nhierarchy"
    samples: "Optional sample names, sample names have to be in the\\nsame order as taxonomy input files. If no samplenames\\nare provided, the base names of the taxa file(s) will\\nbe used."
    freq: "Output file 1, taxon matrix with normalized\\nfrequencies [default: taxa_freq_norm.tsv]"
    counts: "Output file 2, taxon matrix with counts [default:\\ntaxa_counts.tsv]"
    plot: "Output file 3, stacked barplot of total count\\nnormalized taxa [default: taxa_freq_norm.svg]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_freq = "${in_freq}"
    File out_counts = "${in_counts}"
    File out_plot = "${in_plot}"
  }
}