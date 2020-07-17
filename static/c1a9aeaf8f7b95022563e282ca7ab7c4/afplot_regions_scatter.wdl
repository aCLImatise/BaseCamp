version 1.0

task AfplotRegionsScatter {
  input {
    Int? margin
    String? region
    File? region_file
    String? name
    File? output_dir
    File? vcf
    String? color_palette
    Int? dpi
  }
  command <<<
    afplot regions scatter \
      ~{if defined(margin) then ("--margin " +  '"' + margin + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(region_file) then ("--region-file " +  '"' + region_file + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(color_palette) then ("--color-palette " +  '"' + color_palette + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""}
  >>>
  parameter_meta {
    margin: "Margin around regions to plot"
    region: "Region string. Must be of format <contig:start-end>"
    region_file: "Path to region file"
    name: "Optional title for plot"
    output_dir: "Path to output directory  [required]"
    vcf: "Path to input VCF file  [required]"
    color_palette: "The name of a color palette to pass to seaborn.set_palette"
    dpi: "DPI for output PNGs (default: 300)"
  }
}