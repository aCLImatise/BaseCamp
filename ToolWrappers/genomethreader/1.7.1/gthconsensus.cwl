class: CommandLineTool
id: gthconsensus.cwl
inputs:
- id: in_translation_table
  doc: "set the codon translation table used for codon translation in\nmatching, DP,\
    \ and output\ndefault: 1"
  type: boolean
  inputBinding:
    prefix: -translationtable
- id: in_be_verbosedefault_no
  doc: "be verbose\ndefault: no"
  type: boolean
  inputBinding:
    prefix: -v
- id: in_xml_out
  doc: "show output in XML format\ndefault: no"
  type: boolean
  inputBinding:
    prefix: -xmlout
- id: in_gff_three_out
  doc: "show output in GFF3 format\ndefault: no"
  type: boolean
  inputBinding:
    prefix: -gff3out
- id: in_md_five_ids
  doc: "show MD5 fingerprints as sequence IDs\ndefault: no"
  type: boolean
  inputBinding:
    prefix: -md5ids
- id: in_redirect_output_specified
  doc: "redirect output to specified file\ndefault: undefined"
  type: File
  inputBinding:
    prefix: -o
- id: in_gzip
  doc: "write gzip compressed output file\ndefault: no"
  type: File
  inputBinding:
    prefix: -gzip
- id: in_bzip_two
  doc: "write bzip2 compressed output file\ndefault: no"
  type: File
  inputBinding:
    prefix: -bzip2
- id: in_force
  doc: "force writing to output file\ndefault: no"
  type: File
  inputBinding:
    prefix: -force
- id: in_gs_two_out
  doc: "output in old GeneSeqer2 format\ndefault: no"
  type: boolean
  inputBinding:
    prefix: -gs2out
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
- id: in_intermediate
  doc: "stop after calculation of spliced alignments and output\nresults in reusable\
    \ XML format. Do not process this output\nyourself, use the ``normal'' XML output\
    \ instead!\ndefault: no"
  type: boolean
  inputBinding:
    prefix: -intermediate
- id: in_version
  doc: display version information and exit
  type: boolean
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_redirect_output_specified
  doc: "redirect output to specified file\ndefault: undefined"
  type: File
  outputBinding:
    glob: $(inputs.in_redirect_output_specified)
- id: out_gzip
  doc: "write gzip compressed output file\ndefault: no"
  type: File
  outputBinding:
    glob: $(inputs.in_gzip)
- id: out_bzip_two
  doc: "write bzip2 compressed output file\ndefault: no"
  type: File
  outputBinding:
    glob: $(inputs.in_bzip_two)
- id: out_force
  doc: "force writing to output file\ndefault: no"
  type: File
  outputBinding:
    glob: $(inputs.in_force)
cwlVersion: v1.1
baseCommand:
- gthconsensus
