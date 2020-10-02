class: CommandLineTool
id: gthfilestat.cwl
inputs:
- id: in_min_alignment_score
  doc: "the minimum alignment score for spliced alignments to be\nincluded into the\
    \ set of spliced alignments\ndefault: 0.00"
  type: double
  inputBinding:
    prefix: -minalignmentscore
- id: in_max_alignment_score
  doc: "the maximum alignment score for spliced alignments to be\nincluded into the\
    \ set of spliced alignments\ndefault: 1.00"
  type: double
  inputBinding:
    prefix: -maxalignmentscore
- id: in_min_coverage
  doc: "set the minimum coverage for spliced alignments to be\nincluded into the set\
    \ of spliced alignments\ndefault: 0.00"
  type: boolean
  inputBinding:
    prefix: -mincoverage
- id: in_max_coverage
  doc: "set the maximum coverage for spliced alignments to be\nincluded into the set\
    \ of spliced alignments\ndefault: 9999.99"
  type: boolean
  inputBinding:
    prefix: -maxcoverage
- id: in_be_verbosedefault_no
  doc: "be verbose\ndefault: no"
  type: boolean
  inputBinding:
    prefix: -v
- id: in_version
  doc: display version information and exit
  type: boolean
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gthfilestat
