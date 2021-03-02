class: CommandLineTool
id: marvel.cwl
inputs:
- id: in_input_dir
  doc: "Path to a folder containing metagenomic bins in .fa or\n.fasta format"
  type: Directory?
  inputBinding:
    prefix: --input-dir
- id: in_threads
  doc: "Number of CPU threads to be used by Prokka and hmmscan\n(default=1)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_output_dir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_min_len
  doc: Bin minimum size
  type: long?
  inputBinding:
    prefix: --min-len
- id: in_confidence
  doc: Confidence threshold
  type: string?
  inputBinding:
    prefix: --confidence
- id: in_db
  doc: Database directory
  type: Directory?
  inputBinding:
    prefix: --db
- id: in_force
  doc: Force overwrite
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_verbose
  doc: Print verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Enable debug mode
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_keep
  doc: Keep all intermediate files
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_cite
  doc: Show citations
  type: boolean?
  inputBinding:
    prefix: --cite
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- marvel
