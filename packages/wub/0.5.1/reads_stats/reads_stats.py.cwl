class: CommandLineTool
id: reads_stats.py.cwl
inputs:
- id: in_fast_x
  doc: input file fastq or fasta
  type: File?
  inputBinding:
    prefix: --fastx
- id: in_raw
  doc: "save raw the gc content per read/contig.\ndefault[False]"
  type: boolean?
  inputBinding:
    prefix: --raw
- id: in_savepath
  doc: output dir. default[cwd]
  type: string?
  inputBinding:
    prefix: --savepath
- id: in_report
  doc: Report PDF default[False]
  type: boolean?
  inputBinding:
    prefix: --report
- id: in_tag
  doc: output name or tag. default[input name]
  type: string?
  inputBinding:
    prefix: --tag
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- reads_stats.py
