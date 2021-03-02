class: CommandLineTool
id: igdiscover_haplotype.cwl
inputs:
- id: in_v_gene
  doc: 'V gene to use for haplotyping J. Default: Auto-'
  type: string?
  inputBinding:
    prefix: --v-gene
- id: in_restrict
  doc: "Restrict analysis to the genes named in the FASTA\nfile. Only the sequence\
    \ names are used!"
  type: File?
  inputBinding:
    prefix: --restrict
- id: in_order
  doc: "Sort the output according to the order of the records\nin the given FASTA\
    \ file."
  type: File?
  inputBinding:
    prefix: --order
- id: in_plot
  doc: Write a haplotype plot to FILE
  type: File?
  inputBinding:
    prefix: --plot
- id: in_structure_plot
  doc: "Write a haplotype structure plot (counts binarized 0\nand 1) to FILE\n"
  type: File?
  inputBinding:
    prefix: --structure-plot
- id: in_d_evalue
  doc: ''
  type: string?
  inputBinding:
    prefix: --d-evalue
- id: in_detected
  doc: '--d-evalue D_EVALUE   Maximal allowed E-value for D gene match. Default:'
  type: string
  inputBinding:
    position: 0
- id: in_zero_dot_zero_zero_zero_one
  doc: --d-coverage D_COVERAGE, --D-coverage D_COVERAGE
  type: double
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_order
  doc: "Sort the output according to the order of the records\nin the given FASTA\
    \ file."
  type: File?
  outputBinding:
    glob: $(inputs.in_order)
hints: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- haplotype
