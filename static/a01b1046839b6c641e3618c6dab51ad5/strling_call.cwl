class: CommandLineTool
id: strling_call.cwl
inputs:
- id: in_fast_a
  doc: path to fasta file
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_min_support
  doc: 'minimum number of supporting reads for a locus to be reported (default: 6)'
  type: long?
  inputBinding:
    prefix: --min-support
- id: in_min_clip
  doc: 'minimum number of supporting clipped reads for each side of a locus (default:
    0)'
  type: long?
  inputBinding:
    prefix: --min-clip
- id: in_min_clip_total
  doc: 'minimum total number of supporting clipped reads for a locus (default: 0)'
  type: long?
  inputBinding:
    prefix: --min-clip-total
- id: in_min_mapq
  doc: 'minimum mapping quality (does not apply to STR reads) (default: 40)'
  type: long?
  inputBinding:
    prefix: --min-mapq
- id: in_loci
  doc: 'Annoated bed file specifying additional STR loci to genotype. Format is: chr
    start stop repeatunit [name]'
  type: File?
  inputBinding:
    prefix: --loci
- id: in_bounds
  doc: STRling -bounds.txt file (usually produced by strling merge) specifying additional
    STR loci to genotype.
  type: File?
  inputBinding:
    prefix: --bounds
- id: in_output_prefix
  doc: 'prefix for output files (default: strling)'
  type: string?
  inputBinding:
    prefix: --output-prefix
- id: in_bam
  doc: path to bam file
  type: string
  inputBinding:
    position: 0
- id: in_bin
  doc: bin file previously created by `strling extract`
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/strling:0.4.1--hbeb723e_1
cwlVersion: v1.1
baseCommand:
- strling
- call
