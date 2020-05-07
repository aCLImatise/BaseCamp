class: CommandLineTool
id: rna_cd_classify.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chunksize
  doc: Chunksize in bases. Default = 100
  type: long
  inputBinding:
    prefix: --chunksize
- id: contig
  doc: Name of mitochrondrial contig in your BAM files. Default = chrM
  type: string
  inputBinding:
    prefix: --contig
- id: cores
  doc: Number of cores to use for processing of BAM files. Default = 1
  type: long
  inputBinding:
    prefix: --cores
- id: directory
  doc: Path to directory with BAM files to be tested. Mutually exclusive with --list-items
  type: Directory
  inputBinding:
    prefix: --directory
- id: list_items
  doc: Path to file containing list of paths to BAM files to be tested. Mutually exclusive
    with --directory
  type: File
  inputBinding:
    prefix: --list-items
- id: model
  doc: Path to model.  [required]
  type: File
  inputBinding:
    prefix: --model
- id: output
  doc: Path to output file containing classifications.  [required]
  type: File
  inputBinding:
    prefix: --output
- id: unknown_threshold
  doc: Threshold of most likely probability below which sampleswll be assinged as
    'unknown'. Default = 0.75
  type: double
  inputBinding:
    prefix: --unknown-threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- rna_cd-classify
