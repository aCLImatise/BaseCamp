version 1.0

task AfplotWholeGenomeScatter {
  input {
    File? path_output_file
    String? exclude_pattern
    String? sample
    String? label
    File? vcf
    String? color_palette
    Int? dpi
  }
  command <<<
    afplot whole-genome scatter \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(exclude_pattern) then ("--exclude-pattern " +  '"' + exclude_pattern + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(color_palette) then ("--color-palette " +  '"' + color_palette + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""}
  >>>
  parameter_meta {
    path_output_file: "Path to output file  [required]"
    exclude_pattern: "Regex pattern(s) to exclude from contig list"
    sample: "Sample name(s) of VCF file(s). If not given, will use fist sample in each VCF File"
    label: "Label(s) to VCF file(s)  [required]"
    vcf: "Path(s) to input VCF file(s)  [required]"
    color_palette: "The name of a color palette to pass to seaborn.set_palette"
    dpi: "DPI for output PNGs (default: 300)"
  }
}