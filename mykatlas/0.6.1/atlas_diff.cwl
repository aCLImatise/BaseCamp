class: CommandLineTool
id: ../../../atlas_diff.cwl
inputs:
- id: km_er
  doc: kmer length (default:21)
  type: string
  inputBinding:
    prefix: --kmer
- id: tmp
  doc: 'tmp directory (default: /tmp/)'
  type: string
  inputBinding:
    prefix: --tmp
- id: keep_tmp
  doc: Dont remove tmp files
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: skeleton_dir
  doc: directory for skeleton binaries
  type: string
  inputBinding:
    prefix: --skeleton_dir
- id: mc_cortex_three_one_path
  doc: Path to mccortex31. Default mccortex31
  type: string
  inputBinding:
    prefix: --mccortex31_path
- id: threads
  doc: threads
  type: string
  inputBinding:
    prefix: --threads
- id: memory
  doc: memory for graph constuction
  type: string
  inputBinding:
    prefix: --memory
- id: expected_depth
  doc: expected depth
  type: string
  inputBinding:
    prefix: --expected_depth
- id: seq
  doc: sequence files (fasta,fastq,bam)
  type: string[]
  inputBinding:
    prefix: --seq
- id: ctx
  doc: cortex graph binary
  type: string
  inputBinding:
    prefix: --ctx
- id: quiet
  doc: do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: add
  doc: after comparing, add the new sample to the graph
  type: boolean
  inputBinding:
    prefix: --add
- id: sample
  doc: sample id
  type: string
  inputBinding:
    position: 0
- id: graph
  doc: The graph to compare new sample against
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- atlas
- diff
