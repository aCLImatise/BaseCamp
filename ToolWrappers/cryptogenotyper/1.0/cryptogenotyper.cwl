class: CommandLineTool
id: cryptogenotyper.cwl
inputs:
- id: in_verbose
  doc: Turn on verbose logging [False].
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input
  doc: "Path to directory with AB1 forward and reverse files\nOR path to a single\
    \ AB1 file"
  type: File?
  inputBinding:
    prefix: --input
- id: in_marker
  doc: "Name of the marker. Currently gp60 and 18S markers are\nsupported"
  type: long?
  inputBinding:
    prefix: --marker
- id: in_seqtype
  doc: "Input sequences type. Select one option out of these\nthree: contig - both\
    \ F and R sequences provided\nforward - forward only sequence provided reverse\
    \ -\nreverse only sequence provided"
  type: string?
  inputBinding:
    prefix: --seqtype
- id: in_forward_primer_name
  doc: "Name of the forward primer to identify forward read\n(e.g. gp60F, SSUF)"
  type: long?
  inputBinding:
    prefix: --forwardprimername
- id: in_reverse_primer_name
  doc: "Name of the reverse primer to identify forward read\n(e.g. gp60R, SSUR)"
  type: long?
  inputBinding:
    prefix: --reverseprimername
- id: in_output_prefix
  doc: "Output name prefix for the results (e.g. test results\nin test_report.fa)"
  type: string?
  inputBinding:
    prefix: --outputprefix
- id: in_database_file
  doc: Path to custom database reference FASTA file
  type: File?
  inputBinding:
    prefix: --databasefile
- id: in_noheader_line
  doc: Display header on tab-delimited file [False]
  type: boolean?
  inputBinding:
    prefix: --noheaderline
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cryptogenotyper:1.0--py_3
cwlVersion: v1.1
baseCommand:
- cryptogenotyper
