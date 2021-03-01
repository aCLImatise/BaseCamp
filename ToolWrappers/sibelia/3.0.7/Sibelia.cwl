class: CommandLineTool
id: Sibelia.cwl
inputs:
- id: in_parameters
  doc: "(OR required)  Parameters set, used for the simplification. Option\n\"loose\"\
    \ produces fewer blocks, but they are larger (\"fine\" is\nopposite).\n-- OR --"
  type: string?
  inputBinding:
    prefix: --parameters
- id: in_stage_file
  doc: "(OR required)  File that contains manually chosen simplifications\nparameters.\
    \ See USAGE file for more information."
  type: File?
  inputBinding:
    prefix: --stagefile
- id: in_outdir
  doc: Directory where output files are written
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_no_blocks
  doc: Do not compute synteny blocks
  type: boolean?
  inputBinding:
    prefix: --noblocks
- id: in_in_ram
  doc: Perform all computations in RAM, don't create temp files.
  type: boolean?
  inputBinding:
    prefix: --inram
- id: in_shared_only
  doc: Output only blocks that occur exactly once in each input sequence.
  type: boolean?
  inputBinding:
    prefix: --sharedonly
- id: in_min_block_size
  doc: Minimum size of a synteny block, default value = 5000 BP.
  type: long?
  inputBinding:
    prefix: --minblocksize
- id: in_sequences_file
  doc: Output sequences of synteny blocks (FASTA format).
  type: boolean?
  inputBinding:
    prefix: --sequencesfile
- id: in_graph_file
  doc: Output resulting condensed de Bruijn graph (in dot format).
  type: boolean?
  inputBinding:
    prefix: --graphfile
- id: in_visualize
  doc: Draw circos diagram with blocks at different stages.
  type: boolean?
  inputBinding:
    prefix: --visualize
- id: in_tempdir
  doc: Directory where temporary files are stored.
  type: Directory?
  inputBinding:
    prefix: --tempdir
- id: in_last_k
  doc: "1>\nValue of K used for the synteny blocks inferring."
  type: long?
  inputBinding:
    prefix: --lastk
- id: in_all_stages
  doc: Output coordinates of synteny blocks from all stages
  type: boolean?
  inputBinding:
    prefix: --allstages
- id: in_gff
  doc: Use GFF format for reporting blocks coordinates
  type: boolean?
  inputBinding:
    prefix: --gff
- id: in_no_post_process
  doc: Do not perform postprocessing (stripe gluing).
  type: boolean?
  inputBinding:
    prefix: --nopostprocess
- id: in_correct_boundaries
  doc: Correct boundaries of unique synteny blocks.
  type: boolean?
  inputBinding:
    prefix: --correctboundaries
- id: in__maxiterations_integer
  doc: "0>,  --maxiterations <integer > 0>\nMaximum number of iterations during a\
    \ stage of simplification, default\n= 4."
  type: long?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Directory where output files are written
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- Sibelia
