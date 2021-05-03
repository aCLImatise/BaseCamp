class: CommandLineTool
id: abyss_longseqdist.cwl
inputs:
- id: in_km_er
  doc: length of a k-mer
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_min_gap
  doc: minimum scaffold gap length to output [200]
  type: long?
  inputBinding:
    prefix: --min-gap
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_sam
  doc: BWA-MEM alignments of long sequences to the assembly
  type: string
  inputBinding:
    position: 0
- id: in_dist
  doc: estimates of the distance between contigs
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.3.1--hd403d74_0
cwlVersion: v1.1
baseCommand:
- abyss-longseqdist
