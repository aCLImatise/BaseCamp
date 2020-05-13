class: CommandLineTool
id: igdiscover_plotalleles.cwl
inputs:
- id: alleles
  doc: List of alleles to plot on y axis, separated by comma
  type: string
  inputBinding:
    position: 0
- id: table
  doc: Table with parsed and filtered IgBLAST results
  type: string
  inputBinding:
    position: 1
- id: plot
  doc: Path to output PDF or PNG
  type: string
  inputBinding:
    position: 2
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
- id: database
  doc: Restrict plotting to the sequences named in the FASTA file. Only the sequence
    names are used!
  type: string
  inputBinding:
    prefix: --database
- id: order
  doc: Sort genes according to the order of the records in the FASTA file.
  type: string
  inputBinding:
    prefix: --order
- id: x
  doc: 'Type of gene on x axis. Default: V'
  type: string
  inputBinding:
    prefix: --x
- id: gene
  doc: 'Type of gene on y axis. Default: J'
  type: string
  inputBinding:
    prefix: --gene
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- plotalleles
