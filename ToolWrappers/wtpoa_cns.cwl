class: CommandLineTool
id: wtpoa_cns.cwl
inputs:
- id: in_number_of_threads
  doc: Number of threads, [4]
  type: long
  inputBinding:
    prefix: -t
- id: in_input_files_wtdbg
  doc: Input file(s) *.ctg.lay from wtdbg, +, [STDIN]
  type: File
  inputBinding:
    prefix: -i
- id: in_output_files
  doc: Output files, [STDOUT]
  type: string
  inputBinding:
    prefix: -o
- id: in_force_overwrite
  doc: Force overwrite
  type: boolean
  inputBinding:
    prefix: -f
- id: in_expected_max_length
  doc: Expected max length of node, or say the overlap length of two adjacent units
    in layout file, [1500] bp
  type: long
  inputBinding:
    prefix: -j
- id: in_match_score
  doc: Match score, [2]
  type: long
  inputBinding:
    prefix: -M
- id: in_mismatch_score
  doc: Mismatch score, [-5]
  type: long
  inputBinding:
    prefix: -X
- id: in_insertion_score
  doc: Insertion score, [-2]
  type: long
  inputBinding:
    prefix: -I
- id: in_deletion_score
  doc: Deletion score, [-4]
  type: long
  inputBinding:
    prefix: -D
- id: in_window_size_middle
  doc: "Window size in the middle of the first read for fast align remaining reads,\
    \ [200]\nIf $W is negative, will disable fast align, but use the abs($W) as Band\
    \ align score cutoff"
  type: long
  inputBinding:
    prefix: -W
- id: in_min_size_aligned
  doc: Min size of aligned size in window, [$W * 0.5]
  type: long
  inputBinding:
    prefix: -w
- id: in_abort_tripoa_when
  doc: Abort TriPOA when any read cannot be fast aligned, then try POA
  type: boolean
  inputBinding:
    prefix: -A
- id: in_realignment_bandwidth_disable
  doc: 'Realignment bandwidth, 0: disable, [16]'
  type: long
  inputBinding:
    prefix: -R
- id: in_min_count_call
  doc: Min count of bases to call a consensus base, [3]
  type: long
  inputBinding:
    prefix: -C
- id: in_min_frequency_call
  doc: Min frequency of non-gap bases to call a consensus base, [0.5]
  type: double
  inputBinding:
    prefix: -F
- id: in_max_number_going
  doc: "Max number of reads in PO-MSA, [20]\nKeep in mind that I am not going to generate\
    \ high accurate consensus sequences here"
  type: long
  inputBinding:
    prefix: -N
- id: in_verbose
  doc: Verbose
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wtpoa-cns
