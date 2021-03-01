class: CommandLineTool
id: phyluce_align_get_align_summary_data.cwl
inputs:
- id: in_alignments
  doc: "The directory containing alignments to be summarized.\n(default: None)"
  type: Directory?
  inputBinding:
    prefix: --alignments
- id: in_input_format
  doc: 'The input alignment format. (default: nexus)'
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_show_tax_on_counts
  doc: 'Show the count of loci with X taxa. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --show-taxon-counts
- id: in_verbosity
  doc: 'The logging level to use. (default: INFO)'
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: File?
  inputBinding:
    prefix: --log-path
- id: in_cores
  doc: "Process alignments in parallel using --cores for\nalignment. This is the number\
    \ of PHYSICAL CPUs.\n(default: 1)"
  type: long?
  inputBinding:
    prefix: --cores
- id: in_output_stats
  doc: "Output a CSV-formatted file of stats, by locus\n(default: None)\n"
  type: File?
  inputBinding:
    prefix: --output-stats
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_stats
  doc: "Output a CSV-formatted file of stats, by locus\n(default: None)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_stats)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_align_summary_data
