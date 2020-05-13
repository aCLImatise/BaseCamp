class: CommandLineTool
id: bcftools_index.cwl
inputs:
- id: csi
  doc: generate CSI-format index for VCF/BCF files [default]
  type: boolean
  inputBinding:
    prefix: --csi
- id: force
  doc: overwrite index if it already exists
  type: boolean
  inputBinding:
    prefix: --force
- id: min_shift
  doc: set minimal interval size for CSI indices to 2^INT [14]
  type: long
  inputBinding:
    prefix: --min-shift
- id: output_file
  doc: optional output index file name
  type: File
  inputBinding:
    prefix: --output-file
- id: tbi
  doc: generate TBI-format index for VCF files
  type: boolean
  inputBinding:
    prefix: --tbi
- id: threads
  doc: use multithreading with INT worker threads [0]
  type: long
  inputBinding:
    prefix: --threads
- id: n_records
  doc: print number of records based on existing index file
  type: boolean
  inputBinding:
    prefix: --nrecords
- id: stats
  doc: print per contig stats based on existing index file
  type: boolean
  inputBinding:
    prefix: --stats
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- index
