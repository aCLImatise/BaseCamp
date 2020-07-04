version 1.0

task TaxmapperPlot {
  input {
    Array[String] tax_a
    Array[String] samples
    String? freq
    String? counts
    String? plot
  }
  command <<<
    taxmapper plot \
      ~{if defined(tax_a) then ("--taxa " +  '"' + tax_a + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(freq) then ("--freq " +  '"' + freq + '"') else ""} \
      ~{if defined(counts) then ("--counts " +  '"' + counts + '"') else ""} \
      ~{if defined(plot) then ("--plot " +  '"' + plot + '"') else ""}
  >>>
  parameter_meta {
    tax_a: "Taxonomy file(s), counted taxa for a taxonomic hierarchy"
    samples: "Optional sample names, sample names have to be in the same order as taxonomy input files. If no samplenames are provided, the base names of the taxa file(s) will be used."
    freq: "Output file 1, taxon matrix with normalized frequencies [default: taxa_freq_norm.tsv]"
    counts: "Output file 2, taxon matrix with counts [default: taxa_counts.tsv]"
    plot: "Output file 3, stacked barplot of total count normalized taxa [default: taxa_freq_norm.svg]"
  }
}