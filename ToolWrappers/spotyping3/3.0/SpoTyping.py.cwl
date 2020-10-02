class: CommandLineTool
id: SpoTyping.py.cwl
inputs:
- id: in_seq
  doc: "Set this if input is a fasta file that contains only a\ncomplete genomic sequence\
    \ or assembled contigs from an\nisolate [Default is off]"
  type: boolean
  inputBinding:
    prefix: --seq
- id: in_swift
  doc: 'swift mode, either "on" or "off" [Defulat: on]'
  type: string
  inputBinding:
    prefix: --swift
- id: in_min
  doc: "minimum number of error-free hits to support presence\nof a spacer [Default:\
    \ 0.1*average read depth]"
  type: long
  inputBinding:
    prefix: --min
- id: in_rm_in
  doc: "minimum number of 1-error-tolerant hits to support\npresence of a spacer [Default:\
    \ 0.12 * average read\ndepth]"
  type: long
  inputBinding:
    prefix: --rmin
- id: in_outdir
  doc: 'output directory [Default: running directory]'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_output
  doc: "basename of output files generated [Default:\nSpoTyping]"
  type: string
  inputBinding:
    prefix: --output
- id: in_no_query
  doc: suppress the SITVIT database query [Default is off]
  type: boolean
  inputBinding:
    prefix: --noQuery
- id: in_filter
  doc: "stringent filtering of reads (used only for low\nquality reads)[Default is\
    \ off]"
  type: boolean
  inputBinding:
    prefix: --filter
- id: in_sorted
  doc: "set this only when the reads are sorted to a reference\ngenome [Default is\
    \ off]"
  type: boolean
  inputBinding:
    prefix: --sorted
- id: in_debug
  doc: "enable debug mode, keeping all intermediate files for\nchecking [Default is\
    \ off]\n"
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_fast_q_one_slash_fast_a
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_fast_q_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'output directory [Default: running directory]'
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- SpoTyping.py
