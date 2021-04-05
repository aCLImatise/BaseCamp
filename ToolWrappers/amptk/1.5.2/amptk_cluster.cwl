class: CommandLineTool
id: amptk_cluster.cwl
inputs:
- id: in_fast_q
  doc: Input FASTQ file (Required)
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_out
  doc: 'Output base name. Default: out'
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_max_ee
  doc: 'Expected error quality trimming. Default: 1.0'
  type: boolean?
  inputBinding:
    prefix: --maxee
- id: in_pct_otu
  doc: 'OTU Clustering Radius (percent). Default: 97'
  type: boolean?
  inputBinding:
    prefix: --pct_otu
- id: in_minsize
  doc: 'Minimum size to keep (singleton filter). Default: 2'
  type: boolean?
  inputBinding:
    prefix: --minsize
- id: in_u_chime_ref
  doc: 'Run Ref Chimera filtering. Default: off [ITS, LSU, COI, 16S, custom path]'
  type: boolean?
  inputBinding:
    prefix: --uchime_ref
- id: in_map_filtered
  doc: 'Map quality filtered reads back to OTUs. Default: off'
  type: boolean?
  inputBinding:
    prefix: --map_filtered
- id: in_u_noise
  doc: 'Run De-noising pre-clustering (UNOISE). Default: off'
  type: boolean?
  inputBinding:
    prefix: --unoise
- id: in_debug
  doc: Keep intermediate files.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_cpus
  doc: 'Number of CPUs to use. Default: all'
  type: boolean?
  inputBinding:
    prefix: --cpus
- id: in_u_search
  doc: 'USEARCH executable. Default: usearch9'
  type: boolean?
  inputBinding:
    prefix: --usearch
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/amptk:1.5.2--py_0
cwlVersion: v1.1
baseCommand:
- amptk
- cluster
