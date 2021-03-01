class: CommandLineTool
id: infer_experiment.py.cwl
inputs:
- id: in_input_file
  doc: Input alignment file in SAM or BAM format
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_ref_gene
  doc: Reference gene model in bed fomat.
  type: string?
  inputBinding:
    prefix: --refgene
- id: in_sample_size
  doc: "Number of reads sampled from SAM/BAM file.\ndefault=200000"
  type: long?
  inputBinding:
    prefix: --sample-size
- id: in_mapq
  doc: "Minimum mapping quality (phred scaled) for an\nalignment to be considered\
    \ as \"uniquely mapped\".\ndefault=30\n"
  type: long?
  inputBinding:
    prefix: --mapq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- infer_experiment.py
