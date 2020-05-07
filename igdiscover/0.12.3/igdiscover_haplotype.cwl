class: CommandLineTool
id: igdiscover_haplotype.cwl
inputs:
- id: v_gene
  doc: 'V gene to use for haplotyping J. Default: Auto- detected'
  type: string
  inputBinding:
    prefix: --v-gene
- id: d_evalue
  doc: 'Maximal allowed E-value for D gene match. Default: 0.0001'
  type: string
  inputBinding:
    prefix: --d-evalue
- id: d_coverage
  doc: 'Minimum D coverage (in percent). Default: 65%)'
  type: string
  inputBinding:
    prefix: --d-coverage
- id: restrict
  doc: Restrict analysis to the genes named in the FASTA file. Only the sequence names
    are used!
  type: string
  inputBinding:
    prefix: --restrict
- id: order
  doc: Sort the output according to the order of the records in the given FASTA file.
  type: string
  inputBinding:
    prefix: --order
- id: plot
  doc: Write a haplotype plot to FILE
  type: File
  inputBinding:
    prefix: --plot
- id: structure_plot
  doc: Write a haplotype structure plot (counts binarized 0 and 1) to FILE
  type: File
  inputBinding:
    prefix: --structure-plot
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- haplotype
