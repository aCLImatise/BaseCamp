class: CommandLineTool
id: phyluce_align_extract_taxa_from_alignments.cwl
inputs:
- id: in_alignments
  doc: The input directory containing nexus files
  type: Directory?
  inputBinding:
    prefix: --alignments
- id: in_output
  doc: The directory in which to store the output files
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_input_format
  doc: The input format of the alignments
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: The input alignment format
  type: string?
  inputBinding:
    prefix: --output-format
- id: in_verbosity
  doc: The logging level to use.
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File?
  inputBinding:
    prefix: --log-path
- id: in_cores
  doc: "Process alignments in parallel using --cores for\nalignment. This is the number\
    \ of PHYSICAL CPUs."
  type: long?
  inputBinding:
    prefix: --cores
- id: in_skip_check
  doc: Skip the initial taxon determination
  type: boolean?
  inputBinding:
    prefix: --skip-check
- id: in_exclude
  doc: Taxa to exclude
  type: string[]
  inputBinding:
    prefix: --exclude
- id: in_include
  doc: "Taxa to include\n"
  type: string[]
  inputBinding:
    prefix: --include
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The directory in which to store the output files
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_extract_taxa_from_alignments
