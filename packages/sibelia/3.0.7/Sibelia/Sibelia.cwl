class: CommandLineTool
id: Sibelia.cwl
inputs:
- id: in__parameters_parameters
  doc: ",  --parameters <loose|fine|far>\n(OR required)  Parameters set, used for\
    \ the simplification. Option\n\"loose\" produces fewer blocks, but they are larger\
    \ (\"fine\" is\nopposite).\n-- OR --"
  type: string
  inputBinding:
    prefix: -s
- id: in__stagefile_file
  doc: ",  --stagefile <file name>\n(OR required)  File that contains manually chosen\
    \ simplifications\nparameters. See USAGE file for more information."
  type: File
  inputBinding:
    prefix: -k
- id: in__outdir_dir
  doc: ",  --outdir <dir name>\nDirectory where output files are written"
  type: Directory
  inputBinding:
    prefix: -o
- id: in_no_blocks
  doc: Do not compute synteny blocks
  type: boolean
  inputBinding:
    prefix: --noblocks
- id: in__inramperform_create
  doc: ",  --inram\nPerform all computations in RAM, don't create temp files."
  type: boolean
  inputBinding:
    prefix: -r
- id: in__sharedonlyoutput_blocks
  doc: ",  --sharedonly\nOutput only blocks that occur exactly once in each input\
    \ sequence."
  type: boolean
  inputBinding:
    prefix: -a
- id: in__minblocksize_size
  doc: ",  --minblocksize <integer>\nMinimum size of a synteny block, default value\
    \ = 5000 BP."
  type: long
  inputBinding:
    prefix: -m
- id: in__sequencesfileoutput_sequences
  doc: ",  --sequencesfile\nOutput sequences of synteny blocks (FASTA format)."
  type: boolean
  inputBinding:
    prefix: -q
- id: in__graphfileoutput_resulting
  doc: ",  --graphfile\nOutput resulting condensed de Bruijn graph (in dot format)."
  type: boolean
  inputBinding:
    prefix: -g
- id: in__visualizedraw_circos
  doc: ",  --visualize\nDraw circos diagram with blocks at different stages."
  type: boolean
  inputBinding:
    prefix: -v
- id: in__tempdir_dir
  doc: ",  --tempdir <dir name>\nDirectory where temporary files are stored."
  type: Directory
  inputBinding:
    prefix: -t
- id: in_last_k
  doc: "1>\nValue of K used for the synteny blocks inferring."
  type: long
  inputBinding:
    prefix: --lastk
- id: in_all_stages
  doc: Output coordinates of synteny blocks from all stages
  type: boolean
  inputBinding:
    prefix: --allstages
- id: in_gff
  doc: Use GFF format for reporting blocks coordinates
  type: boolean
  inputBinding:
    prefix: --gff
- id: in_no_post_process
  doc: Do not perform postprocessing (stripe gluing).
  type: boolean
  inputBinding:
    prefix: --nopostprocess
- id: in_correct_boundaries
  doc: Correct boundaries of unique synteny blocks.
  type: boolean
  inputBinding:
    prefix: --correctboundaries
- id: in__maxiterations_integer
  doc: "0>,  --maxiterations <integer > 0>\nMaximum number of iterations during a\
    \ stage of simplification, default\n= 4."
  type: long
  inputBinding:
    prefix: -i
- id: in_sibel_i_a
  doc: "{-s <loose|fine|far>|-k <file name>} [-o <dir name>]\n[--noblocks] [-r] [-a]\
    \ [-m <integer>] [-q] [-g] [-v] [-t <dir\nname>] [--lastk <integer > 1>] [--allstages]\
    \ [--gff]\n[--nopostprocess] [--correctboundaries] [-i <integer > 0>] [--]\n[--version]\
    \ [-h] <fasta files with genomes> ..."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outdir_dir
  doc: ",  --outdir <dir name>\nDirectory where output files are written"
  type: Directory
  outputBinding:
    glob: $(inputs.in__outdir_dir)
cwlVersion: v1.1
baseCommand:
- Sibelia
