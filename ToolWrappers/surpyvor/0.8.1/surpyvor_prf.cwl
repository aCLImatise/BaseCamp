class: CommandLineTool
id: surpyvor_prf.cwl
inputs:
- id: in_verbose
  doc: Print out more information while running.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_truth
  doc: vcf containing truth set
  type: string
  inputBinding:
    prefix: --truth
- id: in_test
  doc: vcf containing test set
  type: string
  inputBinding:
    prefix: --test
- id: in_distance
  doc: maximum distance between test and truth call
  type: string
  inputBinding:
    prefix: --distance
- id: in_minlength
  doc: Minimum length of SVs to be taken into account
  type: long
  inputBinding:
    prefix: --minlength
- id: in_ignore_type
  doc: Ignore the type of the structural variant
  type: boolean
  inputBinding:
    prefix: --ignore_type
- id: in_ignore_chrom_s
  doc: "[IGNORE_CHROMS [IGNORE_CHROMS ...]]\nChromosomes to ignore for prf calculation."
  type: boolean
  inputBinding:
    prefix: --ignore_chroms
- id: in_keep_merged
  doc: Save merged vcf file.
  type: File
  inputBinding:
    prefix: --keepmerged
- id: in_bar
  doc: "Make stacked bar chart of SV lengths coloured by\nvalidation status"
  type: boolean
  inputBinding:
    prefix: --bar
- id: in_matrix
  doc: Make a confusion matrix.
  type: boolean
  inputBinding:
    prefix: --matrix
- id: in_venn
  doc: Make a venn diagram.
  type: boolean
  inputBinding:
    prefix: --venn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- surpyvor
- prf
