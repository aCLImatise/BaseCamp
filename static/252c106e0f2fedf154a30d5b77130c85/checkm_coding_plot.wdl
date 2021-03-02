version 1.0

task CheckmCodingPlot {
  input {
    String? image_type
    Int? dpi
    Int? font_size
    Directory? extension
    Float? width
    Float? height
    Int? cd_window_size
    Float? cd_bin_width
    Boolean? quiet
    String results_dir
    String bin_dir
    String output_dir
    String dist_value
  }
  command <<<
    checkm coding_plot \
      ~{results_dir} \
      ~{bin_dir} \
      ~{output_dir} \
      ~{dist_value} \
      ~{if defined(image_type) then ("--image_type " +  '"' + image_type + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(font_size) then ("--font_size " +  '"' + font_size + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(cd_window_size) then ("--cd_window_size " +  '"' + cd_window_size + '"') else ""} \
      ~{if defined(cd_bin_width) then ("--cd_bin_width " +  '"' + cd_bin_width + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    image_type: "desired image type (default: png)"
    dpi: "desired DPI of output image (default: 600)"
    font_size: "Desired font size (default: 8)"
    extension: "extension of bins (other files in directory are ignored) (default: fna)"
    width: "width of output image (default: 6.5)"
    height: "height of output image (default: 3.5)"
    cd_window_size: "window size used to calculate CD histogram (default: 10000)"
    cd_bin_width: "width of CD bars in histogram (default: 0.01)"
    quiet: "suppress console output"
    results_dir: "directory specified during qa command"
    bin_dir: "directory containing bins to plot (fasta format)"
    output_dir: "directory to hold plots"
    dist_value: "reference distribution(s) to plot; integer between 0 and 100"
  }
  output {
    File out_stdout = stdout()
  }
}