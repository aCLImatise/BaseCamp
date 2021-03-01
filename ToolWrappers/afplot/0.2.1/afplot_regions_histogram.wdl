version 1.0

task AfplotRegionsHistogram {
  input {
    Int? margin
    String? region
    File? region_file
    String? name
    File? output_dir
    File? vcf
    String? color_palette
    Boolean? kde_only
    String seaborn_dot_set_palette
  }
  command <<<
    afplot regions histogram \
      ~{seaborn_dot_set_palette} \
      ~{if defined(margin) then ("--margin " +  '"' + margin + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(region_file) then ("--region-file " +  '"' + region_file + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(color_palette) then ("--color-palette " +  '"' + color_palette + '"') else ""} \
      ~{if (kde_only) then "--kde-only" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    margin: "Margin around regions to plot"
    region: "Region string. Must be of format <contig:start-end>"
    region_file: "Path to region file"
    name: "Optional title for plot"
    output_dir: "Path to output directory  [required]"
    vcf: "Path to input VCF file  [required]"
    color_palette: "The name of a color palette to pass to"
    kde_only: "Only show kernel density plot"
    seaborn_dot_set_palette: "--dpi INTEGER           DPI for output PNGs (default: 300)"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}