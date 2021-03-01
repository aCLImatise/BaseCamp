class: CommandLineTool
id: cnvkit.py_export_bed.cwl
inputs:
- id: in_sample_id
  doc: "Identifier to write in the 4th column of the BED file.\n[Default: use the\
    \ sample ID, taken from the file name]"
  type: File?
  inputBinding:
    prefix: --sample-id
- id: in_label_genes
  doc: "Show gene names in the 4th column of the BED file.\n(This is a bad idea if\
    \ >1 input files are given.)"
  type: boolean?
  inputBinding:
    prefix: --label-genes
- id: in_ploidy
  doc: 'Ploidy of the sample cells. [Default: 2]'
  type: long?
  inputBinding:
    prefix: --ploidy
- id: in_sample_sex
  doc: "Specify the sample's chromosomal sex as male or\nfemale. (Otherwise guessed\
    \ from X and Y coverage)."
  type: string?
  inputBinding:
    prefix: --sample-sex
- id: in_show
  doc: "Which segmented regions to show: 'all' = all segment\nregions; 'variant' =\
    \ CNA regions with non-neutral copy\nnumber; 'ploidy' = CNA regions with non-default\n\
    ploidy. [Default: ploidy]"
  type: string?
  inputBinding:
    prefix: --show
- id: in_haploid_x_reference
  doc: "Was a male reference used? If so, expect half ploidy\non chrX and chrY; otherwise,\
    \ only chrY has half\nploidy. In CNVkit, if a male reference was used, the\n\"\
    neutral\" copy number (ploidy) of chrX is 1; chrY is\nhaploid for either reference\
    \ sex."
  type: boolean?
  inputBinding:
    prefix: --haploid-x-reference
- id: in_output
  doc: "Output file name.\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_segments
  doc: "Segmented copy ratio data files (*.cns), the output of\nthe 'segment' or 'call'\
    \ sub-commands."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file name.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cnvkit:0.9.8--py_0
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- export
- bed
