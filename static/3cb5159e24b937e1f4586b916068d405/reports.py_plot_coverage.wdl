version 1.0

task ReportspyPlotCoverage {
  input {
    Boolean? plot_format
    Boolean? plot_data_style
    Boolean? plotstyle
    Int? plot_width
    Int? plot_height
    Float? plot_dpi
    String? plot_title
    String? minimum_base_quality
    String? minimum_mapping_quality
    Int? max_coverage_depth
    Int? read_length_threshold
    File? out_summary
    Boolean? plot_only_non_duplicates
    String? loglevel
    Directory? tmp_dir
    Boolean? tmp_dir_keep
    String in_bam
    String out_plot_file
  }
  command <<<
    reports_py plot_coverage \
      ~{in_bam} \
      ~{out_plot_file} \
      ~{if (plot_format) then "--plotFormat" else ""} \
      ~{if (plot_data_style) then "--plotDataStyle" else ""} \
      ~{if (plotstyle) then "--plotStyle" else ""} \
      ~{if defined(plot_width) then ("--plotWidth " +  '"' + plot_width + '"') else ""} \
      ~{if defined(plot_height) then ("--plotHeight " +  '"' + plot_height + '"') else ""} \
      ~{if defined(plot_dpi) then ("--plotDPI " +  '"' + plot_dpi + '"') else ""} \
      ~{if defined(plot_title) then ("--plotTitle " +  '"' + plot_title + '"') else ""} \
      ~{if defined(minimum_base_quality) then ("-q " +  '"' + minimum_base_quality + '"') else ""} \
      ~{if defined(minimum_mapping_quality) then ("-Q " +  '"' + minimum_mapping_quality + '"') else ""} \
      ~{if defined(max_coverage_depth) then ("-m " +  '"' + max_coverage_depth + '"') else ""} \
      ~{if defined(read_length_threshold) then ("-l " +  '"' + read_length_threshold + '"') else ""} \
      ~{if defined(out_summary) then ("--outSummary " +  '"' + out_summary + '"') else ""} \
      ~{if (plot_only_non_duplicates) then "--plotOnlyNonDuplicates" else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (tmp_dir_keep) then "--tmp_dirKeep" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    plot_format: "File format of the coverage plot. By default it is\\ninferred from the file extension of out_plot_file, but\\nit can be set explicitly via --plotFormat. Valid\\nformats include: ps, jpg, rgba, jpeg, eps, png, raw,\\ntif, tiff, svg, pdf, svgz, pgf"
    plot_data_style: "The plot data display style. Valid options: filled,\\nline, dots (default: filled)"
    plotstyle: "The plot visual style. Valid options: fivethirtyeight,\\nseaborn-talk, seaborn-ticks, seaborn-deep,\\ndark_background, seaborn-dark, seaborn-colorblind,\\nseaborn-whitegrid, seaborn-dark-palette, grayscale,\\nseaborn-paper, seaborn-bright, classic, seaborn-muted,\\nseaborn-darkgrid, seaborn-notebook, seaborn-pastel,\\nseaborn-white, bmh, ggplot, seaborn-poster (default:\\nggplot)"
    plot_width: "Width of the plot in pixels (default: 1024)"
    plot_height: "Width of the plot in pixels (default: 768)"
    plot_dpi: "dots per inch for rendered output, more useful for\\nvector modes (default: 80.0)"
    plot_title: "The title displayed on the coverage plot (default:\\n'Coverage Plot')"
    minimum_base_quality: "The minimum base quality threshold"
    minimum_mapping_quality: "The minimum mapping quality threshold"
    max_coverage_depth: "The max coverage depth (default: 1000000)"
    read_length_threshold: "Read length threshold"
    out_summary: "Coverage summary TSV file. Default is to write to\\ntemp."
    plot_only_non_duplicates: "Plot only non-duplicates (samtools -F 1024)"
    loglevel: "Verboseness of output. [default: DEBUG]"
    tmp_dir: "Base directory for temp files. [default: /tmp]"
    tmp_dir_keep: "Keep the tmp_dir if an exception occurs while running.\\nDefault is to delete all temp files at the end, even\\nif there's a failure.\\n"
    in_bam: "Input reads, BAM format."
    out_plot_file: "The generated chart file"
  }
  output {
    File out_stdout = stdout()
  }
}