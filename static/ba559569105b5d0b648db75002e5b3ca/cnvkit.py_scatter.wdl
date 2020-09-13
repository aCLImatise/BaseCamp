version 1.0

task CnvkitpyScatter {
  input {
    File? segment
    Int? chromosome
    String? gene
    File? range_list
    Int? width
    File? output_pdf_file
    String? anti_target_marker
    Boolean? by_bin
    String? segment_color
    File? title
    Boolean? trend
    Int? y_max
    Int? y_min
    File? vcf
    String? sample_id
    String? normal_id
    Int? min_variant_depth
    Boolean? ignore_vcfs_genotypes
    File filename
  }
  command <<<
    cnvkit_py scatter \
      ~{filename} \
      ~{if defined(segment) then ("--segment " +  '"' + segment + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(range_list) then ("--range-list " +  '"' + range_list + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(output_pdf_file) then ("--output " +  '"' + output_pdf_file + '"') else ""} \
      ~{if defined(anti_target_marker) then ("--antitarget-marker " +  '"' + anti_target_marker + '"') else ""} \
      ~{if (by_bin) then "--by-bin" else ""} \
      ~{if defined(segment_color) then ("--segment-color " +  '"' + segment_color + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if (trend) then "--trend" else ""} \
      ~{if defined(y_max) then ("--y-max " +  '"' + y_max + '"') else ""} \
      ~{if defined(y_min) then ("--y-min " +  '"' + y_min + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(sample_id) then ("--sample-id " +  '"' + sample_id + '"') else ""} \
      ~{if defined(normal_id) then ("--normal-id " +  '"' + normal_id + '"') else ""} \
      ~{if defined(min_variant_depth) then ("--min-variant-depth " +  '"' + min_variant_depth + '"') else ""} \
      ~{if (ignore_vcfs_genotypes) then "-z" else ""}
  >>>
  parameter_meta {
    segment: "Segmentation calls (.cns), the output of the 'segment'\\ncommand."
    chromosome: "Chromosome or chromosomal range, e.g. 'chr1' or\\n'chr1:2333000-2444000', to display. If a range is\\ngiven, all targeted genes in this range will be shown,\\nunless -g/--gene is also given."
    gene: "Name of gene or genes (comma-separated) to display."
    range_list: "File listing the chromosomal ranges to display, as\\nBED, interval list or 'chr:start-end' text. Creates\\nfocal plots similar to -c/--chromosome for each listed\\nregion, combined into a multi-page PDF. The output\\nfilename must also be specified (-o/--output)."
    width: "Width of margin to show around the selected gene(s)\\n(-g/--gene) or small chromosomal region\\n(-c/--chromosome). [Default: 1000000]"
    output_pdf_file: "Output PDF file name."
    anti_target_marker: "Plot antitargets using this symbol when plotting in a\\nselected chromosomal region (-g/--gene or\\n-c/--chromosome). [Default: same as targets]"
    by_bin: "Plot data x-coordinates by bin indices instead of\\ngenomic coordinates. All bins will be shown with equal\\nwidth, no blank regions will be shown, and x-axis\\nvalues indicate bin number (within chromosome) instead\\nof genomic position."
    segment_color: "Plot segment lines in this color. Value can be any\\nstring accepted by matplotlib, e.g. 'red' or\\n'#CC0000'."
    title: "Plot title. [Default: sample ID, from filename or -i]"
    trend: "Draw a smoothed local trendline on the scatter plot."
    y_max: "y-axis upper limit."
    y_min: "y-axis lower limit."
    vcf: "VCF file name containing variants to plot for SNV\\nb-allele frequencies."
    sample_id: "Name of the sample in the VCF to use for b-allele\\nfrequency extraction and as the default plot title."
    normal_id: "Corresponding normal sample ID in the input VCF. This\\nsample is used to select only germline SNVs to plot."
    min_variant_depth: "Minimum read depth for a SNV to be used in the\\nb-allele frequency calculation. [Default: 20]"
    ignore_vcfs_genotypes: "[ALT_FREQ], --zygosity-freq [ALT_FREQ]\\nIgnore VCF's genotypes (GT field) and instead infer\\nzygosity from allele frequencies. [Default if used\\nwithout a number: 0.25]\\n"
    filename: "Processed bin-level copy ratios (*.cnr), the output of\\nthe 'fix' sub-command."
  }
  output {
    File out_stdout = stdout()
    File out_range_list = "${in_range_list}"
    File out_output_pdf_file = "${in_output_pdf_file}"
  }
}