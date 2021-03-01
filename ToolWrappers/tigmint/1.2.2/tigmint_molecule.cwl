class: CommandLineTool
id: tigmint_molecule.cwl
inputs:
- id: in_output
  doc: Output TSV file [stdout]
  type: File?
  inputBinding:
    prefix: --output
- id: in_out_bam
  doc: Output BAM file with MI tags (optional)
  type: File?
  inputBinding:
    prefix: --out-bam
- id: in_bed
  doc: Output in BED format [default]
  type: boolean?
  inputBinding:
    prefix: --bed
- id: in_tsv
  doc: Output in TSV format
  type: boolean?
  inputBinding:
    prefix: --tsv
- id: in_dist
  doc: "Maximum distance between reads in the same molecule\n[50000]"
  type: long?
  inputBinding:
    prefix: --dist
- id: in_reads
  doc: "Minimum number of reads per molecule (duplicates are\nfiltered out) [4]"
  type: long?
  inputBinding:
    prefix: --reads
- id: in_mapq
  doc: Minimum mapping quality [0]
  type: long?
  inputBinding:
    prefix: --mapq
- id: in_as_ratio
  doc: "Minimum ratio of alignment score (AS) over read length\n[0.65]"
  type: long?
  inputBinding:
    prefix: --as-ratio
- id: in_nm
  doc: Maximum number of mismatches (NM) [5]
  type: long?
  inputBinding:
    prefix: --nm
- id: in_size
  doc: Minimum molecule size [2000]
  type: long?
  inputBinding:
    prefix: --size
- id: in_stdin
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output TSV file [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_out_bam
  doc: Output BAM file with MI tags (optional)
  type: File?
  outputBinding:
    glob: $(inputs.in_out_bam)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tigmint:1.2.2--py_1
cwlVersion: v1.1
baseCommand:
- tigmint-molecule
