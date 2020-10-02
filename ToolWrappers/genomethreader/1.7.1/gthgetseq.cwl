class: CommandLineTool
id: gthgetseq.cwl
inputs:
- id: in_get_cdna
  doc: "get cDNA/EST sequences\ndefault: no"
  type: boolean
  inputBinding:
    prefix: -getcdna
- id: in_get_cdna_comp
  doc: "get complement of cDNA/EST sequences\ndefault: no"
  type: boolean
  inputBinding:
    prefix: -getcdnacomp
- id: in_get_protein
  doc: "get protein sequences\ndefault: no"
  type: boolean
  inputBinding:
    prefix: -getprotein
- id: in_get_protein_comp
  doc: "get complement of protein sequences\ndefault: no"
  type: boolean
  inputBinding:
    prefix: -getproteincomp
- id: in_get_genomic
  doc: "get genomic sequences\ndefault: no"
  type: boolean
  inputBinding:
    prefix: -getgenomic
- id: in_get_genomic_comp
  doc: "get complement of genomic sequences\ndefault: no"
  type: boolean
  inputBinding:
    prefix: -getgenomiccomp
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
- id: in_gzip
  doc: "gzip compressed input file(s)\ndefault: no"
  type: boolean
  inputBinding:
    prefix: -gzip
- id: in_bzip_two
  doc: "bzip2 compressed input file(s)\ndefault: no"
  type: boolean
  inputBinding:
    prefix: -bzip2
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
- gthgetseq
