version 1.0

task CheckmMarkerPlot {
  input {
    String? image_type
    Int? dpi
    Int? font_size
    Directory? extension
    Float? width
    Float? height
    Float? fig_padding
    Boolean? quiet
    String results_dir
    String bin_dir
    String output_dir
  }
  command <<<
    checkm marker_plot \
      ~{results_dir} \
      ~{bin_dir} \
      ~{output_dir} \
      ~{if defined(image_type) then ("--image_type " +  '"' + image_type + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(font_size) then ("--font_size " +  '"' + font_size + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(fig_padding) then ("--fig_padding " +  '"' + fig_padding + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/checkm-genome:1.1.3--py_1"
  }
  parameter_meta {
    image_type: "desired image type (default: png)"
    dpi: "desired DPI of output image (default: 600)"
    font_size: "Desired font size (default: 8)"
    extension: "extension of bins (other files in directory are ignored) (default: fna)"
    width: "width of output image (default: 6.5)"
    height: "height of output image (default: 6.5)"
    fig_padding: "white space to place around figure (in inches) (default: 0.2)"
    quiet: "suppress console output"
    results_dir: "directory specified during qa command"
    bin_dir: "directory containing bins to plot (fasta format)"
    output_dir: "directory to hold plots"
  }
  output {
    File out_stdout = stdout()
  }
}