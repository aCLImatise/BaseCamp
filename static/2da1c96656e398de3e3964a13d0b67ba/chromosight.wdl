version 1.0

task Chromosight {
  input {
    String? preset
    String? click
    Boolean? force_norm
    Boolean? inter
    Int? min_dist
    Int? max_dist
    String? pattern
    String? pearson
    Int? subsample
    Int? threads
    String? perc_undetected
    Int? perc_zero
    Directory? dump
    Int? iterations
    File? kernel_config
    Boolean? no_plotting
    Int? n_mads
    Int? min_separation
    Boolean? smooth_trend
    Boolean? t_svd
    String? win_fmt
    Int? win_size
    String convolution_dot
    String hic_contact_map
    String name_output_directory
    Int bed_two_d
    String path_contact_map
    String output_directory_where
    String prefix
  }
  command <<<
    chromosight \
      ~{convolution_dot} \
      ~{hic_contact_map} \
      ~{name_output_directory} \
      ~{bed_two_d} \
      ~{path_contact_map} \
      ~{output_directory_where} \
      ~{prefix} \
      ~{if defined(preset) then ("--preset " +  '"' + preset + '"') else ""} \
      ~{if defined(click) then ("--click " +  '"' + click + '"') else ""} \
      ~{if (force_norm) then "--force-norm" else ""} \
      ~{if (inter) then "--inter" else ""} \
      ~{if defined(min_dist) then ("--min-dist " +  '"' + min_dist + '"') else ""} \
      ~{if defined(max_dist) then ("--max-dist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(pearson) then ("--pearson " +  '"' + pearson + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(perc_undetected) then ("--perc-undetected " +  '"' + perc_undetected + '"') else ""} \
      ~{if defined(perc_zero) then ("--perc-zero " +  '"' + perc_zero + '"') else ""} \
      ~{if defined(dump) then ("--dump " +  '"' + dump + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(kernel_config) then ("--kernel-config " +  '"' + kernel_config + '"') else ""} \
      ~{if (no_plotting) then "--no-plotting" else ""} \
      ~{if defined(n_mads) then ("--n-mads " +  '"' + n_mads + '"') else ""} \
      ~{if defined(min_separation) then ("--min-separation " +  '"' + min_separation + '"') else ""} \
      ~{if (smooth_trend) then "--smooth-trend" else ""} \
      ~{if (t_svd) then "--tsvd" else ""} \
      ~{if defined(win_fmt) then ("--win-fmt " +  '"' + win_fmt + '"') else ""} \
      ~{if defined(win_size) then ("--win-size " +  '"' + win_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    preset: "Generate a preset config for the given pattern.\\nPreset configs available are \\\"loops\\\" and\\n\\\"borders\\\". [default: loops]"
    click: "Show input contact map and uses double clicks from\\nuser to build the kernel. Warning: memory-heavy,\\nreserve for small genomes or subsetted matrices."
    force_norm: "Re-compute matrix normalization (balancing) and\\noverwrite weights present in the cool files instead\\nof reusing them."
    inter: "Enable to consider interchromosomal contacts.\\nWarning: Experimental feature with high memory\\nconsumption, only use with small matrices."
    min_dist: "Minimum distance from the diagonal (in base pairs).\\nat which detection should operate. [default: auto]"
    max_dist: "Maximum distance from the diagonal (in base pairs)\\nfor detection. [default: auto]"
    pattern: "Which pattern to detect. This will use preset\\nconfigurations for the given pattern. Possible\\nvalues are: loops, borders, hairpins and\\ncentromeres. [default: loops]"
    pearson: "Pearson correlation threshold when detecting patterns\\nin the contact map. Lower values leads to potentially\\nmore detections, but more false positives. [default: auto]"
    subsample: "If greater than 1, subsample INT contacts from the\\nmatrix. If between 0 and 1, subsample a proportion of\\ncontacts instead. Useful when comparing matrices with\\ndifferent coverages. [default: no]"
    threads: "Number of CPUs to use in parallel. [default: 1]"
    perc_undetected: "Maximum percentage of non-detectable pixels (nan) in\\nwindows allowed to report patterns. [default: auto]"
    perc_zero: "Maximum percentage of empty (0) pixels in windows\\nallowed to report patterns. [default: auto]"
    dump: "Directory where to save matrix dumps during\\nprocessing and detection. Each dump is saved as\\na compressed npz of a sparse matrix and can be\\nloaded using scipy.sparse.load_npz."
    iterations: "How many iterations to perform after the first\\ntemplate-based pass. [default: 1]"
    kernel_config: "Optionally give a path to a custom JSON kernel\\nconfig path. Use this to override pattern if\\nyou do not want to use one of the preset\\npatterns."
    no_plotting: "Disable generation of pileup plots."
    n_mads: "Maximum number of median absolute deviations below\\nthe median of the bin sums distribution allowed to\\nconsider detectable bins. [default: 5]"
    min_separation: "Minimum distance required between patterns, in\\nbasepairs. If two patterns are closer than this\\ndistance in both axes, the one with the lowest\\nscore is discarded. [default: auto]"
    smooth_trend: "Use isotonic regression when detrending to reduce\\nnoise at long ranges. Do not enable this for circular\\ngenomes."
    t_svd: "Enable kernel factorisation via truncated svd.\\nAccelerates detection, at the cost of slight\\ninaccuracies. Singular matrices are truncated to\\nretain 99.9% of the information in the kernel."
    win_fmt: "File format used to store individual windows\\naround each pattern. Window order matches\\npatterns inside the associated text file.\\nPossible formats are json and npy. [default: json]"
    win_size: "Window size (width), in pixels, to use for the\\nkernel when computing correlations. The pattern\\nkernel will be resized to match this size. Linear\\nlinear interpolation is used to fill between pixels.\\nIf not specified, the default kernel size will\\nbe used instead. [default: auto]\\n"
    convolution_dot: "quantify:"
    hic_contact_map: "The Hi-C contact map to detect patterns on, in\\nbedgraph2d or cool format."
    name_output_directory: "name of the output directory"
    bed_two_d: "Tab-separated text files with columns chrom1, start1\\nend1, chrom2, start2, end2. Each line correspond to\\na pair of positions (i.e. a position in the matrix)."
    path_contact_map: "Path to the contact map, in bedgraph2d or\\ncool format."
    output_directory_where: "output directory where files should be generated."
    prefix: "Path prefix for config files. If prefix is a/b,\\nfiles a/b.json and a/b.1.txt will be generated.\\nIf a given pattern has N kernel matrices, N txt\\nfiles are created they will be named a/b.[1-N].txt."
  }
  output {
    File out_stdout = stdout()
  }
}