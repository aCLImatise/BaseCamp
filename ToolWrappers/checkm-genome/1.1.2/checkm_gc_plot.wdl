version 1.0

task CheckmGcPlot {
  input {
    String? image_type
    Int? dpi
    Int? font_size
    Directory? extension
    Float? width
    Float? height
    Int? gc_window_size
    Float? gc_bin_width
    Boolean? quiet
    String bin_dir
    String output_dir
    String dist_value
  }
  command <<<
    checkm gc_plot \
      ~{bin_dir} \
      ~{output_dir} \
      ~{dist_value} \
      ~{if defined(image_type) then ("--image_type " +  '"' + image_type + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(font_size) then ("--font_size " +  '"' + font_size + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(gc_window_size) then ("--gc_window_size " +  '"' + gc_window_size + '"') else ""} \
      ~{if defined(gc_bin_width) then ("--gc_bin_width " +  '"' + gc_bin_width + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    image_type: "desired image type (default: png)"
    dpi: "desired DPI of output image (default: 600)"
    font_size: "Desired font size (default: 8)"
    extension: "extension of bins (other files in directory are ignored) (default: fna)"
    width: "width of output image (default: 6.5)"
    height: "height of output image (default: 3.5)"
    gc_window_size: "window size used to calculate GC histogram (default: 5000)"
    gc_bin_width: "width of GC bars in histogram (default: 0.01)"
    quiet: "suppress console output"
    bin_dir: "directory containing bins to plot (fasta format)"
    output_dir: "directory to hold plots"
    dist_value: "reference distribution(s) to plot; integer between 0 and 100"
  }
  output {
    File out_stdout = stdout()
  }
}