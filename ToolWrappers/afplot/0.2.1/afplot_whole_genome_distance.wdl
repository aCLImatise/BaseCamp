version 1.0

task AfplotWholegenomeDistance {
  input {
    File? path_output_file
    String? exclude_pattern
    File? sample
    File? label
    File? vcf
    String? color_palette
    String seaborn_dot_set_palette
  }
  command <<<
    afplot whole_genome distance \
      ~{seaborn_dot_set_palette} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(exclude_pattern) then ("--exclude-pattern " +  '"' + exclude_pattern + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(color_palette) then ("--color-palette " +  '"' + color_palette + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_output_file: "Path to output file  [required]"
    exclude_pattern: "Regex pattern(s) to exclude from contig list"
    sample: "Sample name(s) of VCF file(s). If not given,\\nwill use fist sample in each VCF File"
    label: "Label(s) to VCF file(s)  [required]"
    vcf: "Path(s) to input VCF file(s)  [required]"
    color_palette: "The name of a color palette to pass to"
    seaborn_dot_set_palette: "--dpi INTEGER               DPI for output PNGs (default: 300)"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
  }
}