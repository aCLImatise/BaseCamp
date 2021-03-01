class: CommandLineTool
id: arrow_annotations_load_gff3.cwl
inputs:
- id: in_source
  doc: URL where the input dataset can be found.
  type: string?
  inputBinding:
    prefix: --source
- id: in_batch_size
  doc: 'Size of batches before writing  [default: 1]'
  type: long?
  inputBinding:
    prefix: --batch_size
- id: in_test
  doc: Run in dry run mode
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_use_name
  doc: Use the given name instead of generating one.
  type: boolean?
  inputBinding:
    prefix: --use_name
- id: in_disable_cds_recalculation
  doc: "Disable CDS recalculation and instead use the\none provided"
  type: boolean?
  inputBinding:
    prefix: --disable_cds_recalculation
- id: in_timing
  doc: Output loading performance metrics
  type: boolean?
  inputBinding:
    prefix: --timing
- id: in_organism
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gff_three
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arrow
- annotations
- load_gff3
