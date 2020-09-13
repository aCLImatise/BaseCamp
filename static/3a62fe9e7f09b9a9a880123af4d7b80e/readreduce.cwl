class: CommandLineTool
id: ../../../readreduce.cwl
inputs:
- id: in_direct_output_file
  doc: direct the output to a file named OUTPUT (default=stdout)
  type: File
  inputBinding:
    prefix: -o
- id: in_handle_ambigous_nucleotides
  doc: "handle ambigous nucleotides using one of the following strategies (default=resolve)\n\
    resolve: resolve ambiguities to minimize distance (e.g.R matches A);\naverage:\
    \ average ambiguities (e.g.R-A is 0.5 A-A and 0.5 G-A);\nskip: do not include\
    \ sites with ambiguous nucleotides in distance calculations;\ngapmm: a gap ('-')\
    \ matched to anything other than another gap is like matching an N (4-fold ambig)\
    \ to it;"
  type: double
  inputBinding:
    prefix: -a
- id: in_merge_reads_match
  doc: 'merge reads that match over at least this many positions (an integer >0, default=100):'
  type: long
  inputBinding:
    prefix: -l
- id: in_mimimum_cluster_size
  doc: 'mimimum cluster size to report in output (an integer >0, default=16):'
  type: long
  inputBinding:
    prefix: -s
- id: in_sequence_name_form
  doc: "if sequence name is of the form 'somethingCOUNTS_IN_NAMEinteger' then treat\
    \ the integer as a copy number\nwhen counting reads; also output cluster sizes\
    \ using the same separator (a character, default=':'):"
  type: long
  inputBinding:
    prefix: -d
- id: in_report_results_json
  doc: report the results to a JSON file (instead of a FASTA MSA)
  type: boolean
  inputBinding:
    prefix: -j
- id: in_report_progress_updates
  doc: do not report progress updates and other diagnostics to stderr
  type: boolean
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_direct_output_file
  doc: direct the output to a file named OUTPUT (default=stdout)
  type: File
  outputBinding:
    glob: $(inputs.in_direct_output_file)
cwlVersion: v1.1
baseCommand:
- readreduce
