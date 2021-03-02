class: CommandLineTool
id: bamaddrg.cwl
inputs:
- id: in_bam
  doc: use this BAM as input
  type: File?
  inputBinding:
    prefix: --bam
- id: in_uncompressed
  doc: uncompressed BAM output
  type: string?
  inputBinding:
    prefix: --uncompressed
- id: in_sample
  doc: optionally apply this sample name to the preceeding BAM file
  type: File?
  inputBinding:
    prefix: --sample
- id: in_delete
  doc: removes this sample name and all associated RGs from the header
  type: string?
  inputBinding:
    prefix: --delete
- id: in_clear
  doc: removes all RGs which were in the old file
  type: boolean?
  inputBinding:
    prefix: --clear
- id: in_read_group
  doc: optionally apply this read group to the preceeding BAM file
  type: File?
  inputBinding:
    prefix: --read-group
- id: in_region
  doc: limit alignments to those in this region (chr:start..end)
  type: string?
  inputBinding:
    prefix: --region
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bamaddrg:9baba65f88228e55639689a3cea38dd150e6284f--h970fe44_0
cwlVersion: v1.1
baseCommand:
- bamaddrg
