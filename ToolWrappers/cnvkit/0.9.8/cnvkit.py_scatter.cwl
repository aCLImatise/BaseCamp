class: CommandLineTool
id: cnvkit.py_scatter.cwl
inputs:
- id: in_segment
  doc: "Segmentation calls (.cns), the output of the 'segment'\ncommand."
  type: File?
  inputBinding:
    prefix: --segment
- id: in_chromosome
  doc: "Chromosome or chromosomal range, e.g. 'chr1' or\n'chr1:2333000-2444000', to\
    \ display. If a range is\ngiven, all targeted genes in this range will be shown,\n\
    unless -g/--gene is also given."
  type: long?
  inputBinding:
    prefix: --chromosome
- id: in_gene
  doc: Name of gene or genes (comma-separated) to display.
  type: string?
  inputBinding:
    prefix: --gene
- id: in_range_list
  doc: "File listing the chromosomal ranges to display, as\nBED, interval list or\
    \ 'chr:start-end' text. Creates\nfocal plots similar to -c/--chromosome for each\
    \ listed\nregion, combined into a multi-page PDF. The output\nfilename must also\
    \ be specified (-o/--output)."
  type: File?
  inputBinding:
    prefix: --range-list
- id: in_width
  doc: "Width of margin to show around the selected gene(s)\n(-g/--gene) or small\
    \ chromosomal region\n(-c/--chromosome). [Default: 1000000]"
  type: long?
  inputBinding:
    prefix: --width
- id: in_output
  doc: Output PDF file name.
  type: File?
  inputBinding:
    prefix: --output
- id: in_anti_target_marker
  doc: "Plot antitargets using this symbol when plotting in a\nselected chromosomal\
    \ region (-g/--gene or\n-c/--chromosome). [Default: same as targets]"
  type: string?
  inputBinding:
    prefix: --antitarget-marker
- id: in_by_bin
  doc: "Plot data x-coordinates by bin indices instead of\ngenomic coordinates. All\
    \ bins will be shown with equal\nwidth, no blank regions will be shown, and x-axis\n\
    values indicate bin number (within chromosome) instead\nof genomic position."
  type: boolean?
  inputBinding:
    prefix: --by-bin
- id: in_segment_color
  doc: "Plot segment lines in this color. Value can be any\nstring accepted by matplotlib,\
    \ e.g. 'red' or\n'#CC0000'."
  type: string?
  inputBinding:
    prefix: --segment-color
- id: in_title
  doc: 'Plot title. [Default: sample ID, from filename or -i]'
  type: File?
  inputBinding:
    prefix: --title
- id: in_trend
  doc: Draw a smoothed local trendline on the scatter plot.
  type: boolean?
  inputBinding:
    prefix: --trend
- id: in_y_max
  doc: y-axis upper limit.
  type: long?
  inputBinding:
    prefix: --y-max
- id: in_y_min
  doc: y-axis lower limit.
  type: long?
  inputBinding:
    prefix: --y-min
- id: in_vcf
  doc: "VCF file name containing variants to plot for SNV\nb-allele frequencies."
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_sample_id
  doc: "Name of the sample in the VCF to use for b-allele\nfrequency extraction and\
    \ as the default plot title."
  type: string?
  inputBinding:
    prefix: --sample-id
- id: in_normal_id
  doc: "Corresponding normal sample ID in the input VCF. This\nsample is used to select\
    \ only germline SNVs to plot."
  type: string?
  inputBinding:
    prefix: --normal-id
- id: in_min_variant_depth
  doc: "Minimum read depth for a SNV to be used in the\nb-allele frequency calculation.\
    \ [Default: 20]"
  type: long?
  inputBinding:
    prefix: --min-variant-depth
- id: in_ignore_vcfs_genotypes
  doc: "[ALT_FREQ], --zygosity-freq [ALT_FREQ]\nIgnore VCF's genotypes (GT field)\
    \ and instead infer\nzygosity from allele frequencies. [Default if used\nwithout\
    \ a number: 0.25]\n"
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_filename
  doc: "Processed bin-level copy ratios (*.cnr), the output of\nthe 'fix' sub-command."
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_range_list
  doc: "File listing the chromosomal ranges to display, as\nBED, interval list or\
    \ 'chr:start-end' text. Creates\nfocal plots similar to -c/--chromosome for each\
    \ listed\nregion, combined into a multi-page PDF. The output\nfilename must also\
    \ be specified (-o/--output)."
  type: File?
  outputBinding:
    glob: $(inputs.in_range_list)
- id: out_output
  doc: Output PDF file name.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cnvkit:0.9.8--py_0
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- scatter
