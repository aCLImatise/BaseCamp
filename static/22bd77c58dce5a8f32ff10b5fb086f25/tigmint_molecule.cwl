class: CommandLineTool
id: tigmint_molecule.cwl
inputs:
- id: bam
  doc: Input BAM file sorted by BX tag then position, - for stdin
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output TSV file [stdout]
  type: File
  inputBinding:
    prefix: --output
- id: out_bam
  doc: Output BAM file with MI tags (optional)
  type: File
  inputBinding:
    prefix: --out-bam
- id: bed
  doc: Output in BED format [default]
  type: boolean
  inputBinding:
    prefix: --bed
- id: tsv
  doc: Output in TSV format
  type: boolean
  inputBinding:
    prefix: --tsv
- id: dist
  doc: Maximum distance between reads in the same molecule [50000]
  type: string
  inputBinding:
    prefix: --dist
- id: reads
  doc: Minimum number of reads per molecule (duplicates are filtered out) [4]
  type: string
  inputBinding:
    prefix: --reads
- id: mapq
  doc: Minimum mapping quality [0]
  type: string
  inputBinding:
    prefix: --mapq
- id: as_ratio
  doc: Minimum ratio of alignment score (AS) over read length [0.65]
  type: string
  inputBinding:
    prefix: --as-ratio
- id: nm
  doc: Maximum number of mismatches (NM) [5]
  type: string
  inputBinding:
    prefix: --nm
- id: size
  doc: Minimum molecule size [2000]
  type: string
  inputBinding:
    prefix: --size
outputs: []
cwlVersion: v1.1
baseCommand:
- tigmint-molecule
