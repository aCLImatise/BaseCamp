class: CommandLineTool
id: gthsplit.cwl
inputs:
- id: in_alignment_score
  doc: "split according to the overall alignment score (scr)\ndefault: no"
  type: boolean?
  inputBinding:
    prefix: -alignmentscore
- id: in_coverage
  doc: "split according to coverage (cov)\ndefault: no"
  type: boolean?
  inputBinding:
    prefix: -coverage
- id: in_range
  doc: "set the percentage range used to create the sets\ndefault: 5"
  type: boolean?
  inputBinding:
    prefix: -range
- id: in_min_alignment_score
  doc: "the minimum alignment score for spliced alignments to be\nincluded into the\
    \ set of spliced alignments\ndefault: 0.00"
  type: double?
  inputBinding:
    prefix: -minalignmentscore
- id: in_max_alignment_score
  doc: "the maximum alignment score for spliced alignments to be\nincluded into the\
    \ set of spliced alignments\ndefault: 1.00"
  type: double?
  inputBinding:
    prefix: -maxalignmentscore
- id: in_min_coverage
  doc: "set the minimum coverage for spliced alignments to be\nincluded into the set\
    \ of spliced alignments\ndefault: 0.00"
  type: boolean?
  inputBinding:
    prefix: -mincoverage
- id: in_max_coverage
  doc: "set the maximum coverage for spliced alignments to be\nincluded into the set\
    \ of spliced alignments\ndefault: 9999.99"
  type: boolean?
  inputBinding:
    prefix: -maxcoverage
- id: in_be_verbosedefault_no
  doc: "be verbose\ndefault: no"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_gzip
  doc: "write gzip compressed output file(s)\ndefault: no"
  type: File?
  inputBinding:
    prefix: -gzip
- id: in_bzip_two
  doc: "write bzip2 compressed output file(s)\ndefault: no"
  type: File?
  inputBinding:
    prefix: -bzip2
- id: in_force
  doc: "force writing to split files\ndefault: no"
  type: boolean?
  inputBinding:
    prefix: -force
- id: in_version
  doc: display version information and exit
  type: boolean?
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_gzip
  doc: "write gzip compressed output file(s)\ndefault: no"
  type: File?
  outputBinding:
    glob: $(inputs.in_gzip)
- id: out_bzip_two
  doc: "write bzip2 compressed output file(s)\ndefault: no"
  type: File?
  outputBinding:
    glob: $(inputs.in_bzip_two)
hints: []
cwlVersion: v1.1
baseCommand:
- gthsplit
