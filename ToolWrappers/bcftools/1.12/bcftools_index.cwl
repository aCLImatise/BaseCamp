class: CommandLineTool
id: bcftools_index.cwl
inputs:
- id: in_csi
  doc: generate CSI-format index for VCF/BCF files [default]
  type: boolean?
  inputBinding:
    prefix: --csi
- id: in_force
  doc: overwrite index if it already exists
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_min_shift
  doc: set minimal interval size for CSI indices to 2^INT [14]
  type: long?
  inputBinding:
    prefix: --min-shift
- id: in_output
  doc: optional output index file name
  type: File?
  inputBinding:
    prefix: --output
- id: in_tbi
  doc: generate TBI-format index for VCF files
  type: boolean?
  inputBinding:
    prefix: --tbi
- id: in_threads
  doc: use multithreading with INT worker threads [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_n_records
  doc: print number of records based on existing index file
  type: boolean?
  inputBinding:
    prefix: --nrecords
- id: in_stats
  doc: print per contig stats based on existing index file
  type: boolean?
  inputBinding:
    prefix: --stats
- id: in_in_dot_bcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: optional output index file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcftools:1.12--h3f113a9_0
cwlVersion: v1.1
baseCommand:
- bcftools
- index
