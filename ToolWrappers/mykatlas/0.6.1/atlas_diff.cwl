class: CommandLineTool
id: atlas_diff.cwl
inputs:
- id: in_km_er
  doc: kmer length (default:21)
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_tmp
  doc: 'tmp directory (default: /tmp/)'
  type: Directory?
  inputBinding:
    prefix: --tmp
- id: in_keep_tmp
  doc: Dont remove tmp files
  type: boolean?
  inputBinding:
    prefix: --keep_tmp
- id: in_skeleton_dir
  doc: directory for skeleton binaries
  type: Directory?
  inputBinding:
    prefix: --skeleton_dir
- id: in_mc_cortex_three_one_path
  doc: Path to mccortex31. Default mccortex31
  type: long?
  inputBinding:
    prefix: --mccortex31_path
- id: in_expected_depth
  doc: expected depth
  type: string?
  inputBinding:
    prefix: --expected_depth
- id: in_seq
  doc: sequence files (fasta,fastq,bam)
  type: string[]
  inputBinding:
    prefix: --seq
- id: in_ctx
  doc: cortex graph binary
  type: string?
  inputBinding:
    prefix: --ctx
- id: in_quiet
  doc: do not output warnings to stderr
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_add
  doc: after comparing, add the new sample to the graph
  type: boolean?
  inputBinding:
    prefix: --add
- id: in_sample
  doc: sample id
  type: string
  inputBinding:
    position: 0
- id: in_graph
  doc: The graph to compare new sample against
  type: string
  inputBinding:
    position: 1
- id: in_threads
  doc: -m MEMORY, --memory MEMORY
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- atlas
- diff
