class: CommandLineTool
id: guidescan_bamdata.cwl
inputs:
- id: in_project_name_load
  doc: "project name, load previously saved arguments and save\nadditional output\
    \ (default: myguides)"
  type: string
  inputBinding:
    prefix: -n
- id: in_label
  doc: "use in file name of output database for this run\n(default: test)"
  type: File
  inputBinding:
    prefix: --label
- id: in_name_compute_bamdatabase
  doc: "name of file with guideRNAs for which to compute BAM\ndatabase; may be gzipped\
    \ (.gz); if not provided, use\nall candidate guideRNAs found in the project (default:\n\
    )"
  type: File
  inputBinding:
    prefix: -g
- id: in_maximum_hamming_distance
  doc: "maximum Hamming distance to consider from guideRNA to\nits off-target; off-target\
    \ is an alternative\noccurrence (with any PAM) of this guideRNA in the\ngenome\
    \ at Hamming distance at most this number\n(including PAM); use -1 for omitting\
    \ any off-target\ninfo in resulting BAM (works much faster) (default: 3)"
  type: long
  inputBinding:
    prefix: -d
- id: in_max_off_count
  doc: "maximum number of off-targets to store for a guideRNA\nin a resulting BAM\
    \ library; ignore if OFFDIST is -1\n(default: 1000)"
  type: long
  inputBinding:
    prefix: --maxoffcount
- id: in_how_many_threads
  doc: "how many threads to use; do not specify more than you\nhave on your system;\
    \ currently not implemented\n(default: 1)\n"
  type: long
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_label
  doc: "use in file name of output database for this run\n(default: test)"
  type: File
  outputBinding:
    glob: $(inputs.in_label)
cwlVersion: v1.1
baseCommand:
- guidescan_bamdata
