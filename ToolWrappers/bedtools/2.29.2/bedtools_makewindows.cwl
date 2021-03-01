class: CommandLineTool
id: bedtools_makewindows.cwl
inputs:
- id: in_genome_file_size
  doc: "Genome file size (see notes below).\nWindows will be created for each chromosome\
    \ in the file."
  type: long?
  inputBinding:
    prefix: -g
- id: in_bed_file_chromstartend
  doc: "BED file (with chrom,start,end fields).\nWindows will be created for each\
    \ interval in the file."
  type: File?
  inputBinding:
    prefix: -b
- id: in_divide_interval_fixedsized
  doc: "Divide each input interval (either a chromosome or a BED interval)\nto fixed-sized\
    \ windows (i.e. same number of nucleotide in each window).\nCan be combined with\
    \ -s <step_size>"
  type: long?
  inputBinding:
    prefix: -w
- id: in_step_size_ie
  doc: "Step size: i.e., how many base pairs to step before\ncreating a new window.\
    \ Used to create \"sliding\" windows.\n- Defaults to window size (non-sliding\
    \ windows)."
  type: long?
  inputBinding:
    prefix: -s
- id: in_divide_interval_fixed
  doc: "Divide each input interval (either a chromosome or a BED interval)\nto fixed\
    \ number of windows (i.e. same number of windows, with\nvarying window sizes)."
  type: long?
  inputBinding:
    prefix: -n
- id: in_reverse
  doc: "Reverse numbering of windows in the output, i.e. report\nwindows in decreasing\
    \ order"
  type: boolean?
  inputBinding:
    prefix: -reverse
- id: in_default_output_columns
  doc: "|winnum|srcwinnum\nThe default output is 3 columns: chrom, start, end .\n\
    With this option, a name column will be added.\n\"-i src\" - use the source interval's\
    \ name.\n\"-i winnum\" - use the window number as the ID (e.g. 1,2,3,4...).\n\"\
    -i srcwinnum\" - use the source interval's name with the window number.\nSee below\
    \ for usage examples."
  type: long?
  inputBinding:
    prefix: -i
- id: in_or
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bedtools
- makewindows
