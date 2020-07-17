version 1.0

task Chromosight {
  input {
    String? preset
    String? click
    Boolean? force_norm
    Boolean? inter
    String? min_dist
    String? max_dist
    String? pattern
    String? pearson
    Int? subsample
    String? threads
    String? perc_undetected
    String? perc_zero
    String? dump
    String? iterations
    File? kernel_config
    Boolean? no_plotting
    String? n_mads
    String? min_separation
    Boolean? smooth_trend
    Boolean? t_svd
    String? win_fmt
    String? win_size
    String hic_contact_map
    String name_output_directory
    String bed_two_d
    String path_contact_map
    String output_directory_generated
    String prefix
  }
  command <<<
    chromosight \
      ~{hic_contact_map} \
      ~{name_output_directory} \
      ~{bed_two_d} \
      ~{path_contact_map} \
      ~{output_directory_generated} \
      ~{prefix} \
      ~{if defined(preset) then ("--preset " +  '"' + preset + '"') else ""} \
      ~{if defined(click) then ("--click " +  '"' + click + '"') else ""} \
      ~{true="--force-norm" false="" force_norm} \
      ~{true="--inter" false="" inter} \
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
      ~{true="--no-plotting" false="" no_plotting} \
      ~{if defined(n_mads) then ("--n-mads " +  '"' + n_mads + '"') else ""} \
      ~{if defined(min_separation) then ("--min-separation " +  '"' + min_separation + '"') else ""} \
      ~{true="--smooth-trend" false="" smooth_trend} \
      ~{true="--tsvd" false="" t_svd} \
      ~{if defined(win_fmt) then ("--win-fmt " +  '"' + win_fmt + '"') else ""} \
      ~{if defined(win_size) then ("--win-size " +  '"' + win_size + '"') else ""}
  >>>
  parameter_meta {
    preset: "Generate a preset config for the given pattern. Preset configs available are \"loops\" and \"borders\". [default: loops]"
    click: "Show input contact map and uses double clicks from user to build the kernel. Warning: memory-heavy, reserve for small genomes or subsetted matrices."
    force_norm: "Re-compute matrix normalization (balancing) and overwrite weights present in the cool files instead of reusing them."
    inter: "Enable to consider interchromosomal contacts. Warning: Experimental feature with high memory consumption, only use with small matrices."
    min_dist: "Minimum distance from the diagonal (in base pairs). at which detection should operate. [default: auto]"
    max_dist: "Maximum distance from the diagonal (in base pairs)  for detection. [default: auto]"
    pattern: "Which pattern to detect. This will use preset configurations for the given pattern. Possible values are: loops, borders, hairpins and centromeres. [default: loops]"
    pearson: "Pearson correlation threshold when detecting patterns in the contact map. Lower values leads to potentially more detections, but more false positives. [default: auto]"
    subsample: "If greater than 1, subsample INT contacts from the matrix. If between 0 and 1, subsample a proportion of contacts instead. Useful when comparing matrices with different coverages. [default: no]"
    threads: "Number of CPUs to use in parallel. [default: 1]"
    perc_undetected: "Maximum percentage of non-detectable pixels (nan) in windows allowed to report patterns. [default: auto]"
    perc_zero: "Maximum percentage of empty (0) pixels in windows allowed to report patterns. [default: auto]"
    dump: "Directory where to save matrix dumps during processing and detection. Each dump is saved as a compressed npz of a sparse matrix and can be loaded using scipy.sparse.load_npz. "
    iterations: "How many iterations to perform after the first template-based pass. [default: 1]"
    kernel_config: "Optionally give a path to a custom JSON kernel config path. Use this to override pattern if you do not want to use one of the preset patterns."
    no_plotting: "Disable generation of pileup plots."
    n_mads: "Maximum number of median absolute deviations below the median of the bin sums distribution allowed to consider detectable bins. [default: 5]"
    min_separation: "Minimum distance required between patterns, in basepairs. If two patterns are closer than this distance in both axes, the one with the lowest score is discarded. [default: auto]"
    smooth_trend: "Use isotonic regression when detrending to reduce noise at long ranges. Do not enable this for circular genomes."
    t_svd: "Enable kernel factorisation via truncated svd. Accelerates detection, at the cost of slight inaccuracies. Singular matrices are truncated to retain 99.9% of the information in the kernel."
    win_fmt: "File format used to store individual windows around each pattern. Window order matches patterns inside the associated text file. Possible formats are json and npy. [default: json]"
    win_size: "Window size (width), in pixels, to use for the kernel when computing correlations. The pattern kernel will be resized to match this size. Linear  linear interpolation is used to fill between pixels. If not specified, the default kernel size will be used instead. [default: auto]"
    hic_contact_map: "The Hi-C contact map to detect patterns on, in bedgraph2d or cool format."
    name_output_directory: "name of the output directory"
    bed_two_d: "Tab-separated text files with columns chrom1, start1 end1, chrom2, start2, end2. Each line correspond to a pair of positions (i.e. a position in the matrix)."
    path_contact_map: "Path to the contact map, in bedgraph2d or cool format."
    output_directory_generated: "output directory where files should be generated."
    prefix: "Path prefix for config files. If prefix is a/b, files a/b.json and a/b.1.txt will be generated. If a given pattern has N kernel matrices, N txt files are created they will be named a/b.[1-N].txt."
  }
}