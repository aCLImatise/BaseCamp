version 1.0

task CheckmDistPlot {
  input {
    String? image_type
    Int? dpi
    Int? font_size
    Directory? extension
    Float? width
    Int? height
    Int? gc_window_size
    Int? td_window_size
    Int? cd_window_size
    Float? gc_bin_width
    Float? td_bin_width
    Float? cd_bin_width
    Boolean? quiet
    String results_dir
    String bin_dir
    String output_dir
    String tetra_profile
    String dist_value
  }
  command <<<
    checkm dist_plot \
      ~{results_dir} \
      ~{bin_dir} \
      ~{output_dir} \
      ~{tetra_profile} \
      ~{dist_value} \
      ~{if defined(image_type) then ("--image_type " +  '"' + image_type + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(font_size) then ("--font_size " +  '"' + font_size + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(gc_window_size) then ("--gc_window_size " +  '"' + gc_window_size + '"') else ""} \
      ~{if defined(td_window_size) then ("--td_window_size " +  '"' + td_window_size + '"') else ""} \
      ~{if defined(cd_window_size) then ("--cd_window_size " +  '"' + cd_window_size + '"') else ""} \
      ~{if defined(gc_bin_width) then ("--gc_bin_width " +  '"' + gc_bin_width + '"') else ""} \
      ~{if defined(td_bin_width) then ("--td_bin_width " +  '"' + td_bin_width + '"') else ""} \
      ~{if defined(cd_bin_width) then ("--cd_bin_width " +  '"' + cd_bin_width + '"') else ""} \
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
    height: "height of output image (default: 8)"
    gc_window_size: "window size used to calculate GC histogram (default: 5000)"
    td_window_size: "window size used to calculate TD histogram (default: 5000)"
    cd_window_size: "window size used to calculate CD histogram (default: 10000)"
    gc_bin_width: "width of GC bars in histogram (default: 0.01)"
    td_bin_width: "width of TD bars in histogram (default: 0.01)"
    cd_bin_width: "width of CD bars in histogram (default: 0.01)"
    quiet: "suppress console output"
    results_dir: "directory specified during analyze command"
    bin_dir: "directory containing bins to plot (fasta format)"
    output_dir: "directory to hold plots"
    tetra_profile: "tetranucleotide profiles for each sequence (see tetra command)"
    dist_value: "reference distribution(s) to plot; integer between 0 and 100"
  }
  output {
    File out_stdout = stdout()
  }
}