version 1.0

task CooltoolsComputesaddle {
  input {
    Boolean? contact_type
    Int? min_dist
    Int? max_dist
    Int? n_bins
    Boolean? quantiles
    Float? range
    Float? q_range
    String? weight_name
    Boolean? no_strength
    File? regions
    String? out_prefix
    File? fig
    Boolean? scale
    String? cmap
    Float? vmin
    Float? vmax
    String? hist_color
    Boolean? verbose
    String cool_path
    String track_path
    String expected_path
  }
  command <<<
    cooltools compute_saddle \
      ~{cool_path} \
      ~{track_path} \
      ~{expected_path} \
      ~{if (contact_type) then "--contact-type" else ""} \
      ~{if defined(min_dist) then ("--min-dist " +  '"' + min_dist + '"') else ""} \
      ~{if defined(max_dist) then ("--max-dist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(n_bins) then ("--n-bins " +  '"' + n_bins + '"') else ""} \
      ~{if (quantiles) then "--quantiles" else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if defined(q_range) then ("--qrange " +  '"' + q_range + '"') else ""} \
      ~{if defined(weight_name) then ("--weight-name " +  '"' + weight_name + '"') else ""} \
      ~{if (no_strength) then "--no-strength" else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if (fig) then "--fig" else ""} \
      ~{if (scale) then "--scale" else ""} \
      ~{if defined(cmap) then ("--cmap " +  '"' + cmap + '"') else ""} \
      ~{if defined(vmin) then ("--vmin " +  '"' + vmin + '"') else ""} \
      ~{if defined(vmax) then ("--vmax " +  '"' + vmax + '"') else ""} \
      ~{if defined(hist_color) then ("--hist-color " +  '"' + hist_color + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooltools:0.4.0--py39hcbe4a3b_0"
  }
  parameter_meta {
    contact_type: "[cis|trans]  Type of the contacts to aggregate  [default:\\ncis]"
    min_dist: "Minimal distance between bins to consider,\\nbp. If negative, removesthe first two\\ndiagonals of the data. Ignored with\\n--contact-type trans.  [default: -1]"
    max_dist: "Maximal distance between bins to consider,\\nbp. Ignored, if negative. Ignored with\\n--contact-type trans.  [default: -1]"
    n_bins: "Number of bins for digitizing track values.\\n[default: 50]"
    quantiles: "Bin the signal track into quantiles rather\\nthan by value."
    range: "Low and high values used for binning genome-\\nwide track values, e.g. if `range`=(-0.05,\\n0.05), `n-bins` equidistant bins would be\\ngenerated. Use to prevent the extreme track\\nvalues from exploding the bin range and to\\nensure consistent bins across several runs\\nof `compute_saddle` command using different\\ntrack files."
    q_range: "...       The fraction of the genome-wide range of the\\ntrack values used to generate bins. E.g., if\\n`qrange`=(0.02, 0.98) the lower bin would\\nstart at the 2nd percentile and the upper\\nbin would end at the 98th percentile of the\\ngenome-wide signal. Use to prevent the\\nextreme track values from exploding the bin\\nrange.  [default: 0.0, 1.0]"
    weight_name: "Use balancing weight with this name.\\n[default: weight]"
    no_strength: "Compute and save compartment 'saddle\\nstrength' profile"
    regions: "Path to a BED file containing genomic\\nregions for which saddleplot will be\\ncalculated. Region names can be provided in\\na 4th column and should match regions and\\ntheir names in expected."
    out_prefix: "Dump 'saddledata', 'binedges' and 'hist'\\narrays in a numpy-specific .npz container.\\nUse numpy.load to load these arrays into a\\ndict-like object. The digitized signal\\nvalues are saved to a bedGraph-style TSV.\\n[required]"
    fig: "[png|jpg|svg|pdf|ps|eps]  Generate a figure and save to a file of the\\nspecified format. If not specified - no\\nimage is generated. Repeat for multiple\\noutput formats."
    scale: "[linear|log]            Value scale for the heatmap  [default: log]"
    cmap: "Name of matplotlib colormap  [default:\\ncoolwarm]"
    vmin: "Low value of the saddleplot colorbar. Note:\\nvalue in original units irrespective of used\\nscale, and therefore should be positive for\\nboth vmin and vmax."
    vmax: "High value of the saddleplot colorbar"
    hist_color: "Face color of histogram bar chart"
    verbose: "Enable verbose output"
    cool_path: ""
    track_path: ""
    expected_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_fig = "${in_fig}"
  }
}