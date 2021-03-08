version 1.0

task PhylorankOutliers {
  input {
    Boolean? viral
    Boolean? fixed_root
    File? trusted_tax_a_file
    Int? min_children
    Int? min_support
    String? f_measure_table
    Float? min_f_measure
    Float? f_measure_mono
    Boolean? highlight_poly_phyl_y
    Boolean? mb_let
    File? plot_tax_a_file
    Boolean? plot_domain
    Boolean? plot_dist_tax_a_only
    File? highlight_tax_a_file
    Int? dpi
    Boolean? verbose_table
    Boolean? skip_m_pld_three
    String input_tree
    String taxonomy_file
    String output_dir
  }
  command <<<
    phylorank outliers \
      ~{input_tree} \
      ~{taxonomy_file} \
      ~{output_dir} \
      ~{if (viral) then "--viral" else ""} \
      ~{if (fixed_root) then "--fixed_root" else ""} \
      ~{if defined(trusted_tax_a_file) then ("--trusted_taxa_file " +  '"' + trusted_tax_a_file + '"') else ""} \
      ~{if defined(min_children) then ("--min_children " +  '"' + min_children + '"') else ""} \
      ~{if defined(min_support) then ("--min_support " +  '"' + min_support + '"') else ""} \
      ~{if defined(f_measure_table) then ("--fmeasure_table " +  '"' + f_measure_table + '"') else ""} \
      ~{if defined(min_f_measure) then ("--min_fmeasure " +  '"' + min_f_measure + '"') else ""} \
      ~{if defined(f_measure_mono) then ("--fmeasure_mono " +  '"' + f_measure_mono + '"') else ""} \
      ~{if (highlight_poly_phyl_y) then "--highlight_polyphyly" else ""} \
      ~{if (mb_let) then "--mblet" else ""} \
      ~{if defined(plot_tax_a_file) then ("--plot_taxa_file " +  '"' + plot_tax_a_file + '"') else ""} \
      ~{if (plot_domain) then "--plot_domain" else ""} \
      ~{if (plot_dist_tax_a_only) then "--plot_dist_taxa_only" else ""} \
      ~{if defined(highlight_tax_a_file) then ("--highlight_taxa_file " +  '"' + highlight_tax_a_file + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if (verbose_table) then "--verbose_table" else ""} \
      ~{if (skip_m_pld_three) then "--skip_mpld3" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phylorank:0.1.10--py_0"
  }
  parameter_meta {
    viral: "indicates a viral input tree and taxonomy"
    fixed_root: "use single fixed root to infer outliers"
    trusted_tax_a_file: "file indicating trusted taxonomic groups to use for\\ninferring distribution (default: all taxa)"
    min_children: "minimum required child taxa to consider taxa when\\ninferring distribution (default: 2)"
    min_support: "minimum support value to consider taxa when inferring\\ndistribution (default: 0) (default: 0.0)"
    f_measure_table: "table indicating F-measure score for each taxa"
    min_f_measure: "minimum F-measure to consider taxa when inferring\\ndistribution (default: 0.95)"
    f_measure_mono: "minimum F-measure to consider taxa monophyletic\\n(default: 0.95)"
    highlight_poly_phyl_y: "highlight taxa with an F-measure less than\\n--fmeasure_mono"
    mb_let: "calculate 'mean branch length to extent taxa' instead\\nof 'relative evolutionary distances'"
    plot_tax_a_file: "file indicating taxonomic groups to plot (default: all\\ntaxa)"
    plot_domain: "show domain rank in plot"
    plot_dist_tax_a_only: "only plot taxa used to infer distribution"
    highlight_tax_a_file: "file indicating taxa to highlight"
    dpi: "DPI of plots (default: 96)"
    verbose_table: "add additional columns to output table"
    skip_m_pld_three: "skip plots requiring mpld3"
    input_tree: "decorated tree for inferring RED outliers"
    taxonomy_file: "taxonomy file for inferring RED outliers"
    output_dir: "desired output directory for generated files"
  }
  output {
    File out_stdout = stdout()
  }
}