class: CommandLineTool
id: callpeaks.sh.cwl
inputs:
- id: in_increases_dot
  doc: Useful for kmer-frequency histograms.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bbmap:38.90--h1296035_0
cwlVersion: v1.1
baseCommand:
- callpeaks.sh
