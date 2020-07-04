class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/wtobt.cwl
inputs:
- id: long_reads_file
  doc: Long reads sequences file, + *
  type: string
  inputBinding:
    prefix: -i
- id: long_reads_region
  doc: 'Long reads retained region, often from wtobt/wtcyc, + Format: read_name\toffset\tlength\toriginal_len'
  type: string
  inputBinding:
    prefix: -b
- id: overlap_files_readsttlentbegtendtreadsttlentbegtendtscoretidentityfloattmattmistinstdeltcigar
  doc: 'Overlap file(s), + * Format: reads1\t+/-\tlen1\tbeg1\tend1\treads2\t+/-\tlen2\tbeg2\tend2\tscore\tidentity<float>\tmat\tmis\tins\tdel\tcigar'
  type: string
  inputBinding:
    prefix: -j
- id: ouput_reads_regions
  doc: "Ouput of reads' regions after trimming, -:stdout, * Format: read_name\\toffset\\\
    tlength"
  type: boolean
  inputBinding:
    prefix: -o
- id: force_overwrite_output
  doc: Force overwrite output file
  type: boolean
  inputBinding:
    prefix: -f
- id: trun_specical_trim
  doc: Trun off specical trim for reads contained by others One read (A) will not
    be trimmed when it is contained by another read (B). When trun on special trim
    (by default), if the B read is trimmed, program will accordingly trim A read
  type: boolean
  inputBinding:
    prefix: -C
- id: minimum_score_alignment
  doc: Minimum score of alignment, [200]
  type: long
  inputBinding:
    prefix: -s
- id: minimum_identity_alignment
  doc: Minimum identity of alignment , [0.5]
  type: double
  inputBinding:
    prefix: -m
- id: maximum_margin_alignment
  doc: Maximum margin of alignment, [200]
  type: long
  inputBinding:
    prefix: -w
- id: minimum_depth_overlap
  doc: Minimum depth of overlap between anchored reads along reference read, to detect
    chimeric reads, [1]
  type: long
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- wtobt
