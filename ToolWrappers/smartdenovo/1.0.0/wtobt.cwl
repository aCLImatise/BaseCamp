class: CommandLineTool
id: wtobt.cwl
inputs:
- id: in_long_reads_file
  doc: Long reads sequences file, + *
  type: File?
  inputBinding:
    prefix: -i
- id: in_long_reads_region
  doc: "Long reads retained region, often from wtobt/wtcyc, +\nFormat: read_name\\\
    toffset\\tlength\\toriginal_len"
  type: string?
  inputBinding:
    prefix: -b
- id: in_overlap_files_readsttlentbegtendtreadsttlentbegtendtscoretidentityfloattmattmistinstdeltcigar
  doc: "Overlap file(s), + *\nFormat: reads1\\t+/-\\tlen1\\tbeg1\\tend1\\treads2\\\
    t+/-\\tlen2\\tbeg2\\tend2\\tscore\\tidentity<float>\\tmat\\tmis\\tins\\tdel\\\
    tcigar"
  type: double?
  inputBinding:
    prefix: -j
- id: in_ouput_reads_regions
  doc: "Ouput of reads' regions after trimming, -:stdout, *\nFormat: read_name\\toffset\\\
    tlength"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_force_overwrite_output
  doc: Force overwrite output file
  type: File?
  inputBinding:
    prefix: -f
- id: in_trun_specical_trim
  doc: "Trun off specical trim for reads contained by others\nOne read (A) will not\
    \ be trimmed when it is contained by another read (B).\nWhen trun on special trim\
    \ (by default), if the B read is trimmed, program will accordingly trim A read"
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_minimum_score_alignment
  doc: Minimum score of alignment, [200]
  type: long?
  inputBinding:
    prefix: -s
- id: in_minimum_identity_alignment
  doc: Minimum identity of alignment , [0.5]
  type: double?
  inputBinding:
    prefix: -m
- id: in_maximum_margin_alignment
  doc: Maximum margin of alignment, [200]
  type: long?
  inputBinding:
    prefix: -w
- id: in_minimum_depth_overlap
  doc: Minimum depth of overlap between anchored reads along reference read, to detect
    chimeric reads, [1]
  type: long?
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite_output
  doc: Force overwrite output file
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite_output)
hints: []
cwlVersion: v1.1
baseCommand:
- wtobt
