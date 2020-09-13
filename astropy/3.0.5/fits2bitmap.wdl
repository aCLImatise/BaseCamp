version 1.0

task Fits2bitmap {
  input {
    Int? ext
    File? filename_output_image
    String? stretch
    Float? power
    Float? asinh_a
    Int? min_cut
    Int? max_cut
    Int? min_percent
    Int? max_percent
    Int? percent
    String? cmap
    File filename
  }
  command <<<
    fits2bitmap \
      ~{filename} \
      ~{if defined(ext) then ("--ext " +  '"' + ext + '"') else ""} \
      ~{if defined(filename_output_image) then ("-o " +  '"' + filename_output_image + '"') else ""} \
      ~{if defined(stretch) then ("--stretch " +  '"' + stretch + '"') else ""} \
      ~{if defined(power) then ("--power " +  '"' + power + '"') else ""} \
      ~{if defined(asinh_a) then ("--asinh_a " +  '"' + asinh_a + '"') else ""} \
      ~{if defined(min_cut) then ("--min_cut " +  '"' + min_cut + '"') else ""} \
      ~{if defined(max_cut) then ("--max_cut " +  '"' + max_cut + '"') else ""} \
      ~{if defined(min_percent) then ("--min_percent " +  '"' + min_percent + '"') else ""} \
      ~{if defined(max_percent) then ("--max_percent " +  '"' + max_percent + '"') else ""} \
      ~{if defined(percent) then ("--percent " +  '"' + percent + '"') else ""} \
      ~{if defined(cmap) then ("--cmap " +  '"' + cmap + '"') else ""}
  >>>
  parameter_meta {
    ext: "Specify the HDU extension number or name (Default is\\n0)."
    filename_output_image: "Filename for the output image (Default is a PNG file\\nwith the same name as the FITS file)."
    stretch: "Type of image stretching (\\\"linear\\\", \\\"sqrt\\\", \\\"power\\\",\\n\\\"log\\\", or \\\"asinh\\\") (Default is \\\"linear\\\")."
    power: "Power index for \\\"power\\\" stretching (Default is 1.0)."
    asinh_a: "The value in normalized image where the asinh curve\\ntransitions from linear to logarithmic behavior (used\\nonly for \\\"asinh\\\" stretch) (Default is 0.1)."
    min_cut: "The pixel value of the minimum cut level (Default is\\nthe image minimum)."
    max_cut: "The pixel value of the maximum cut level (Default is\\nthe image maximum)."
    min_percent: "The percentile value used to determine the minimum cut\\nlevel (Default is 0)."
    max_percent: "The percentile value used to determine the maximum cut\\nlevel (Default is 100)."
    percent: "The percentage of the image values used to determine\\nthe pixel values of the minimum and maximum cut levels\\n(Default is 100)."
    cmap: "matplotlib color map name (Default is \\\"Greys_r\\\")."
    filename: "Path to one or more FITS files to convert"
  }
  output {
    File out_stdout = stdout()
    File out_filename_output_image = "${in_filename_output_image}"
  }
}