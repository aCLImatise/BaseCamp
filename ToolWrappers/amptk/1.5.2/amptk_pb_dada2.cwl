class: CommandLineTool
id: amptk_pb_dada2.cwl
inputs:
- id: in_fast_q
  doc: Input FASTQ file (Required)
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_out
  doc: Output base name.
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_min_reads
  doc: 'Minimum number of reads per sample. Default: 10'
  type: boolean?
  inputBinding:
    prefix: --min_reads
- id: in_read_qual
  doc: 'Minimum read quality. Default: 0.95 [0-1]'
  type: boolean?
  inputBinding:
    prefix: --read_qual
- id: in_barcode_qual
  doc: 'Barcode Quality score. Default: 80 [0-100]'
  type: boolean?
  inputBinding:
    prefix: --barcode_qual
- id: in_pct_otu
  doc: 'OTU Clustering Radius (percent). Default: 97'
  type: boolean?
  inputBinding:
    prefix: --pct_otu
- id: in_platform
  doc: 'Sequencing platform. Default: pacbio'
  type: boolean?
  inputBinding:
    prefix: --platform
- id: in_chimera_method
  doc: 'DADA2 de novo chimera method. Default: consensus [consensus,pooled,per-sample]'
  type: boolean?
  inputBinding:
    prefix: --chimera_method
- id: in_pool
  doc: 'Pool all samples together for DADA2. Default: off'
  type: boolean?
  inputBinding:
    prefix: --pool
- id: in_pseudo_pool
  doc: 'Pseudopooling samples for DADA2. Default: off'
  type: boolean?
  inputBinding:
    prefix: --pseudopool
- id: in_u_chime_ref
  doc: 'Run Ref Chimera filtering. Default: off [ITS, LSU, COI, 16S, custom path]'
  type: boolean?
  inputBinding:
    prefix: --uchime_ref
- id: in_cpus
  doc: 'Number of CPUs to use. Default: all'
  type: boolean?
  inputBinding:
    prefix: --cpus
- id: in_debug
  doc: Keep intermediate files.
  type: boolean?
  inputBinding:
    prefix: --debug
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
- pb-dada2
