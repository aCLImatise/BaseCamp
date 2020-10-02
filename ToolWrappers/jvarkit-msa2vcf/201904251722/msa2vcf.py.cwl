class: CommandLineTool
id: msa2vcf.py.cwl
inputs:
- id: in_ref
  doc: "reference name used for the CHROM column. Optional\nDefault: chrUn"
  type: boolean
  inputBinding:
    prefix: --REF
- id: in_all_sites
  doc: "print all sites\nDefault: false"
  type: boolean
  inputBinding:
    prefix: --allsites
- id: in_consensus
  doc: ruse this sequence as CONSENSUS
  type: boolean
  inputBinding:
    prefix: --consensus
- id: in_fast_a
  doc: save computed fasta sequence in this file.
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_haploid
  doc: "haploid output\nDefault: false"
  type: boolean
  inputBinding:
    prefix: --haploid
- id: in_help_format
  doc: What kind of help. One of [usage,markdown,xml].
  type: boolean
  inputBinding:
    prefix: --helpFormat
- id: in_output
  doc: 'Output file. Optional . Default: stdout'
  type: File
  inputBinding:
    prefix: --output
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output file. Optional . Default: stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- msa2vcf.py
