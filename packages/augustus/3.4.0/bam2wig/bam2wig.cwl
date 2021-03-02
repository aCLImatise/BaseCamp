class: CommandLineTool
id: bam2wig.cwl
inputs:
- id: in_allows_user_specify
  doc: "Allows user to specify a target region, e.g. 'chr3L:10-250'\nThis option can\
    \ only be used if an index file exists\nSee: samtools index"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_string_provided_track
  doc: A string might be provided as track name
  type: boolean?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- bam2wig
