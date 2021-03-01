version 1.0

task BlobtoolsCovplot {
  input {
    File? in_file
    File? cov
    String? xlabel
    String? ylabel
    Float? max
    String? lib
    Boolean? no_title
    Int? plot_groups
    Int? length
    Boolean? c_index
    Boolean? no_hit
    Boolean? no_scale
    Boolean? legend
    Boolean? multiplot
    Boolean? cumulative
    String? sort
    Boolean? sort_first
    String? hist
    String? rank
    String? tax_rule
    String? format
    Boolean? no_blobs
    Boolean? no_reads
    String? out
    String? label
    File? colours
    String? exclude
    File? ref_cov
    File? cat_colour
  }
  command <<<
    blobtools covplot \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(cov) then ("--cov " +  '"' + cov + '"') else ""} \
      ~{if defined(xlabel) then ("--xlabel " +  '"' + xlabel + '"') else ""} \
      ~{if defined(ylabel) then ("--ylabel " +  '"' + ylabel + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(lib) then ("--lib " +  '"' + lib + '"') else ""} \
      ~{if (no_title) then "--notitle" else ""} \
      ~{if defined(plot_groups) then ("--plotgroups " +  '"' + plot_groups + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if (c_index) then "--cindex" else ""} \
      ~{if (no_hit) then "--nohit" else ""} \
      ~{if (no_scale) then "--noscale" else ""} \
      ~{if (legend) then "--legend" else ""} \
      ~{if (multiplot) then "--multiplot" else ""} \
      ~{if (cumulative) then "--cumulative" else ""} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{if (sort_first) then "--sort_first" else ""} \
      ~{if defined(hist) then ("--hist " +  '"' + hist + '"') else ""} \
      ~{if defined(rank) then ("--rank " +  '"' + rank + '"') else ""} \
      ~{if defined(tax_rule) then ("--taxrule " +  '"' + tax_rule + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (no_blobs) then "--noblobs" else ""} \
      ~{if (no_reads) then "--noreads" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(colours) then ("--colours " +  '"' + colours + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(ref_cov) then ("--refcov " +  '"' + ref_cov + '"') else ""} \
      ~{if defined(cat_colour) then ("--catcolour " +  '"' + cat_colour + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_file: "BlobDB file"
    cov: "COV file to be used in y-axis"
    xlabel: "Label for x-axis"
    ylabel: "Label for y-axis"
    max: "Maximum values for x/y-axis [default: 1e10]"
    lib: "Plot only certain covlib(s). Separated by \\\",\\\""
    no_title: "Do not add filename as title to plot"
    plot_groups: "Number of (taxonomic) groups to plot, remaining\\ngroups are placed in 'other' [default: 7]"
    length: "Minimum sequence length considered for plotting [default: 100]"
    c_index: "Colour blobs by 'c index' [default: False]"
    no_hit: "Hide sequences without taxonomic annotation [default: False]"
    no_scale: "Do not scale sequences by length [default: False]"
    legend: "Plot legend of blobplot in separate figure"
    multiplot: "Multi-plot. Print blobplot for each (taxonomic) group separately"
    cumulative: "Print plot after addition of each (taxonomic) group"
    sort: "Sort order for plotting [default: span]"
    sort_first: "<L1,L2,...>    Labels that should always be plotted first, regardless of sort order\\n(\\\"no-hit,other,undef\\\" is often a useful setting)"
    hist: "Data for histograms [default: span]"
    rank: "Taxonomic rank used for colouring of blobs [default: phylum]\\n(Supported: species, genus, family, order,\\nphylum, superkingdom)"
    tax_rule: "Taxrule which has been used for computing taxonomy\\n(Supported: bestsum, bestsumorder) [default: bestsum]"
    format: "Figure format for plot (png, pdf, eps, jpeg,\\nps, svg, svgz, tiff) [default: png]"
    no_blobs: "Omit blobplot [default: False]"
    no_reads: "Omit plot of reads mapping [default: False]"
    out: "Output prefix"
    label: "Relabel (taxonomic) groups, can be used several times.\\ne.g. \\\"A=Actinobacteria,Proteobacteria\\\""
    colours: "File containing colours for (taxonomic) groups"
    exclude: "Exclude these (taxonomic) groups (also works for 'other')\\ne.g. \\\"Actinobacteria,Proteobacteria,other\\\""
    ref_cov: "File containing number of \\\"total\\\" and \\\"mapped\\\" reads\\nper coverage file. (e.g.: bam0,900,100). If provided, info\\nwill be used in read coverage plot(s)."
    cat_colour: "Colour plot based on categories from FILE\\n(format : \\\"seq,category\\\").\\n"
  }
  output {
    File out_stdout = stdout()
  }
}