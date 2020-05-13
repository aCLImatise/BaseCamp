class: CommandLineTool
id: centreseq_extract.cwl
inputs:
- id: in_dir
  doc: Path to your centreseq output directory [required]
  type: File
  inputBinding:
    prefix: --indir
- id: outdir
  doc: Root directory to store all output files [required]
  type: File
  inputBinding:
    prefix: --outdir
- id: cluster_representative
  doc: Name of the target cluster representative e.g. "Typhi.2299.BMH_00195"  [required]
  type: string
  inputBinding:
    prefix: --cluster_representative
outputs: []
cwlVersion: v1.1
baseCommand:
- centreseq
- extract
