version 1.0

task TOBIASClusterMotifs {
  input {
    Boolean? one_more_motif
    Boolean? _threshold_threshold
    Boolean? dist_method
    Boolean? clust_method
    Boolean? _consformat_format
    Boolean? _prefix_prefix
    Boolean? _outdir_output
    Int? verbosity
    String? type
    String? dpi
    String? color_palette
    String? motifs
  }
  command <<<
    TOBIAS ClusterMotifs \
      ~{true="-m" false="" one_more_motif} \
      ~{true="-t" false="" _threshold_threshold} \
      ~{true="--dist_method" false="" dist_method} \
      ~{true="--clust_method" false="" clust_method} \
      ~{true="-a" false="" _consformat_format} \
      ~{true="-p" false="" _prefix_prefix} \
      ~{true="-o" false="" _outdir_output} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(color_palette) then ("--color_palette " +  '"' + color_palette + '"') else ""} \
      ~{if defined(motifs) then ("--motifs " +  '"' + motifs + '"') else ""}
  >>>
  parameter_meta {
    one_more_motif: "[ [ ...]], --motifs [ [ ...]]      One or more motif files to compare and cluster"
    _threshold_threshold: ", --threshold                      Clustering threshold (Default = 0.3)"
    dist_method: "Method for calculating similarity between motifs (default: pcc)"
    clust_method: "Method for clustering (See: https://docs.scipy.org /doc/scipy/reference/generated/scipy.cluster.hiera rchy.linkage.html)"
    _consformat_format: ", --cons_format                    Format of consensus motif file [‘transfac’, ‘meme’, ‘pwm’, 'pfm', 'jaspar'] (Default: jaspar)"
    _prefix_prefix: ", --prefix                         Output prefix (default: 'motif_comparison')"
    _outdir_output: ", --outdir                         Output directory (default: 'clustermotifs_output')"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats, 4: debug, 5: spam) (default: 3)"
    type: "Plot file type [png, pdf, jpg] (Default: pdf)"
    dpi: "Dpi for plots (Default: 100)"
    color_palette: "Color palette (All possible paletts: https://python-graph-gallery.com/197-available- color-palettes-with-matplotlib/. Add '_r' to reverse palette.)"
    motifs: ""
  }
}