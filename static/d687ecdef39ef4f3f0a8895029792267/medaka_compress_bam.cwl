class: CommandLineTool
id: medaka_compress_bam.cwl
inputs:
- id: in_debug
  doc: 'Verbose logging of debug information. (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: 'Minimal logging; warnings only). (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_regions
  doc: "Genomic regions to analyse, or a bed file. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: --regions
- id: in_threads
  doc: 'Number of threads for parallel execution. (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_use_fast_five_info
  doc: "<index> <fast5_dir> <index>\nRoot directory containing the fast5 files and\
    \ .tsv\nfile with columns filename and read_id. (default:\nNone)\n"
  type: long?
  inputBinding:
    prefix: --use_fast5_info
- id: in_bam_input
  doc: Bam file to compress.
  type: string
  inputBinding:
    position: 0
- id: in_bam_output
  doc: Output bam file.
  type: string
  inputBinding:
    position: 1
- id: in_ref_fname
  doc: Reference fasta file used for `bam_input`.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/medaka:1.2.6--py38h64b100c_0
cwlVersion: v1.1
baseCommand:
- medaka
- compress_bam
