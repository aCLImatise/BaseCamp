version 1.0

task CheckmNxPlot {
  input {
    String? image_type
    Int? dpi
    Int? font_size
    Directory? extension
    Float? width
    Float? height
    Int? step_size
    Boolean? quiet
    String bin_dir
    String output_dir
  }
  command <<<
    checkm nx_plot \
      ~{bin_dir} \
      ~{output_dir} \
      ~{if defined(image_type) then ("--image_type " +  '"' + image_type + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(font_size) then ("--font_size " +  '"' + font_size + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(step_size) then ("--step_size " +  '"' + step_size + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    image_type: "desired image type (default: png)"
    dpi: "desired DPI of output image (default: 600)"
    font_size: "Desired font size (default: 8)"
    extension: "extension of bins (other files in directory are ignored) (default: fna)"
    width: "width of output image (default: 6.5)"
    height: "height of output image (default: 6.5)"
    step_size: "x step size for calculating Nx (default: 0.05)"
    quiet: "suppress console output"
    bin_dir: "directory containing bins to plot (fasta format)"
    output_dir: "directory to hold plots"
  }
  output {
    File out_stdout = stdout()
  }
}