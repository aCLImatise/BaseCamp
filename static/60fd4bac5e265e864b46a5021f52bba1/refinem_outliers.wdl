version 1.0

task RefinemOutliers {
  input {
    Int? gc_perc
    Int? td_perc
    String? cov_corr
    Int? cov_perc
    String? report_type
    Boolean? create_plots
    Boolean? individual_plots
    String? image_type
    String? point_size
    String? highlight_file
    String? links_file
    String? dpi
    String? label_font_size
    String? tick_font_size
    String? width
    String? height
    Boolean? silent
    String scaffold_stats_file
    String output_dir
  }
  command <<<
    refinem outliers \
      ~{scaffold_stats_file} \
      ~{output_dir} \
      ~{if defined(gc_perc) then ("--gc_perc " +  '"' + gc_perc + '"') else ""} \
      ~{if defined(td_perc) then ("--td_perc " +  '"' + td_perc + '"') else ""} \
      ~{if defined(cov_corr) then ("--cov_corr " +  '"' + cov_corr + '"') else ""} \
      ~{if defined(cov_perc) then ("--cov_perc " +  '"' + cov_perc + '"') else ""} \
      ~{if defined(report_type) then ("--report_type " +  '"' + report_type + '"') else ""} \
      ~{true="--create_plots" false="" create_plots} \
      ~{true="--individual_plots" false="" individual_plots} \
      ~{if defined(image_type) then ("--image_type " +  '"' + image_type + '"') else ""} \
      ~{if defined(point_size) then ("--point_size " +  '"' + point_size + '"') else ""} \
      ~{if defined(highlight_file) then ("--highlight_file " +  '"' + highlight_file + '"') else ""} \
      ~{if defined(links_file) then ("--links_file " +  '"' + links_file + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(label_font_size) then ("--label_font_size " +  '"' + label_font_size + '"') else ""} \
      ~{if defined(tick_font_size) then ("--tick_font_size " +  '"' + tick_font_size + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    gc_perc: "percentile for identify scaffolds with divergent GC content (default: 98)"
    td_perc: "percentile for identify scaffolds with divergent tetranucleotide signatures (default: 98)"
    cov_corr: "correlation for identifying scaffolds with divergent coverage profiles (default: -2)"
    cov_perc: "mean absolute percent error for identifying scaffolds with divergent coverage profiles (default: 50)"
    report_type: "report sequences that are outliers in 'all' or 'any' reference distribution (default: any)"
    create_plots: "create exploratory plots (currently unstable due to mpld3 limitations)"
    individual_plots: "create individual plots for each statistic"
    image_type: "desired image type (default: png)"
    point_size: "desired size of points in scatterplot (default: 36)"
    highlight_file: "file indicating scaffolds to highlight"
    links_file: "file indicating pairs of scaffolds to join by a line"
    dpi: "desired DPI of output image (default: 96)"
    label_font_size: "desired font size for labels (default: 12)"
    tick_font_size: "desired font size for tick markers (default: 10)"
    width: "width of output image (default: 12)"
    height: "height of output image (default: 6)"
    silent: "suppress output of logger"
    scaffold_stats_file: "file with statistics for each scaffold"
    output_dir: "output directory"
  }
}