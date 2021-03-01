class: CommandLineTool
id: fastq_join.cwl
inputs:
- id: in_see__below
  doc: See 'Output' below
  type: string?
  inputBinding:
    prefix: -o
- id: in_verifies_ids_match
  doc: "Verifies that the 2 files probe id's match up to char C\nuse ' ' (space) for\
    \ Illumina reads"
  type: long?
  inputBinding:
    prefix: -v
- id: in_npercent_maximum_difference
  doc: N-percent maximum difference (8)
  type: long?
  inputBinding:
    prefix: -p
- id: in_nminimum_overlap
  doc: N-minimum overlap (6)
  type: long?
  inputBinding:
    prefix: -m
- id: in_verbose_stitch_length
  doc: Verbose stitch length report
  type: long?
  inputBinding:
    prefix: -r
- id: in_no_reverse_complement
  doc: No reverse complement
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_allow_insert_read
  doc: Allow insert < read length
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_read_one_dot_fq
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_read_two_dot_fq
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_mate_dot_fq
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastq-join
