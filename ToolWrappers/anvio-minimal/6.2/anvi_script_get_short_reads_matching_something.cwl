class: CommandLineTool
id: anvi_script_get_short_reads_matching_something.cwl
inputs:
- id: in_s
  doc: '[-O PATH]'
  type: File
  inputBinding:
    prefix: -s
- id: in_match_sequence
  doc: "SEQUENCE\nShort sequence to look for.."
  type: string
  inputBinding:
    prefix: --match-sequence
- id: in_min_remainder_length
  doc: "Minimum lenght of the remainder of the read after the\nmatch. If your short\
    \ read is XXXMMMMMMYYYYYYYYYYYYYY,\nwhere M indicates nucleotides of matchhing\
    \ sequence,\nmin remainder length is len(Y). Default is 60."
  type: long
  inputBinding:
    prefix: --min-remainder-length
- id: in_sample_name
  doc: "A short sample name (use a single word without spaces\nor fancy chars)"
  type: string
  inputBinding:
    prefix: --sample-name
- id: in_output_directory
  doc: "Output directory for results to be stored. The default\nis the current working\
    \ directory."
  type: Directory
  inputBinding:
    prefix: --output-directory
- id: in_report_raw
  doc: Just report them raw. Don't bother trimming.
  type: boolean
  inputBinding:
    prefix: --report-raw
- id: in_stop_after
  doc: Stop after X number of hits because who needs data.
  type: long
  inputBinding:
    prefix: --stop-after
- id: in_fast_q_files
  doc: One or more FASTQ formatted files
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "Output directory for results to be stored. The default\nis the current working\
    \ directory."
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- anvi-script-get-short-reads-matching-something
