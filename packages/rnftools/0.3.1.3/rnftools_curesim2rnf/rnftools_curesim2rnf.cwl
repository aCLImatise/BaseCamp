class: CommandLineTool
id: rnftools_curesim2rnf.cwl
inputs:
- id: in_cure_sim_fast_q
  doc: CuReSim FASTQ file (- for standard input).
  type: File
  inputBinding:
    prefix: --curesim-fastq
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
- curesim2rnf
