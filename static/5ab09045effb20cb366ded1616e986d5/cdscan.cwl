class: CommandLineTool
id: cdscan.cwl
inputs:
- id: in_scan_dna_protein
  doc: "Scan DNA (1) or Protein (2) [Integer]\ndefault = 1\nrange from 1 to 2"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_output_format_genbank
  doc: "Output format: GenBank (1) or FASTA (2) [Integer]  Optional\ndefault = 1\n\
    range from 1 to 2"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_call_custom_process
  doc: "Call custom process [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_show_progress_monitor
  doc: "Show progress monitor [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_output_file_default
  doc: "Output File [File Out]\ndefault = stdout\n"
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_default
  doc: "Output File [File Out]\ndefault = stdout\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_default)
hints: []
cwlVersion: v1.1
baseCommand:
- cdscan
