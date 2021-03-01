version 1.0

task TOBIASClusterMotifs {
  input {
    Boolean? one_more_motif
    Boolean? threshold
    Boolean? dist_method
    Boolean? clust_method
    Boolean? cons_format
    Boolean? prefix
    Directory? outdir
    Int? verbosity
    String? type
    Int? dpi
    Int? color_palette
    String? motifs
  }
  command <<<
    TOBIAS ClusterMotifs \
      ~{if (one_more_motif) then "-m" else ""} \
      ~{if (threshold) then "--threshold" else ""} \
      ~{if (dist_method) then "--dist_method" else ""} \
      ~{if (clust_method) then "--clust_method" else ""} \
      ~{if (cons_format) then "--cons_format" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(color_palette) then ("--color_palette " +  '"' + color_palette + '"') else ""} \
      ~{if defined(motifs) then ("--motifs " +  '"' + motifs + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    one_more_motif: "[ [ ...]], --motifs [ [ ...]]      One or more motif files to compare and cluster"
    threshold: "Clustering threshold (Default = 0.3)"
    dist_method: "Method for calculating similarity between motifs\\n(default: pcc)"
    clust_method: "Method for clustering (See: https://docs.scipy.org\\n/doc/scipy/reference/generated/scipy.cluster.hiera\\nrchy.linkage.html)"
    cons_format: "Format of consensus motif file [‘transfac’,\\n‘meme’, ‘pwm’, 'pfm', 'jaspar'] (Default: jaspar)"
    prefix: "Output prefix (default: 'motif_comparison')"
    outdir: "Output directory (default: 'clustermotifs_output')"
    verbosity: "Level of output logging (0: silent, 1:\\nerrors/warnings, 2: info, 3: stats, 4: debug, 5:\\nspam) (default: 3)"
    type: "Plot file type [png, pdf, jpg] (Default: pdf)"
    dpi: "Dpi for plots (Default: 100)"
    color_palette: "Color palette (All possible paletts:\\nhttps://python-graph-gallery.com/197-available-\\ncolor-palettes-with-matplotlib/. Add '_r' to\\nreverse palette.)\\n"
    motifs: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}