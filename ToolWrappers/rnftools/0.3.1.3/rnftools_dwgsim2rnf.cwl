class: CommandLineTool
id: rnftools_dwgsim2rnf.cwl
inputs:
- id: in_dwg_sim_prefix
  doc: Prefix for DwgSim.
  type: string
  inputBinding:
    prefix: --dwgsim-prefix
- id: in_estimate_unknown
  doc: Estimate unknown values.
  type: boolean
  inputBinding:
    prefix: --estimate-unknown
- id: in_rnf_fast_q
  doc: Output FASTQ file (- for standard output).
  type: File
  inputBinding:
    prefix: --rnf-fastq
- id: in_fa_idx
  doc: "FAI index of the reference FASTA file (- for standard\ninput). It can be created\
    \ using 'samtools faidx'."
  type: File
  inputBinding:
    prefix: --faidx
- id: in_genome_id
  doc: "Genome ID in RNF (default: 1).\n"
  type: long
  inputBinding:
    prefix: --genome-id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_rnf_fast_q
  doc: Output FASTQ file (- for standard output).
  type: File
  outputBinding:
    glob: $(inputs.in_rnf_fast_q)
cwlVersion: v1.1
baseCommand:
- rnftools
- dwgsim2rnf
