class: CommandLineTool
id: sample2markers.py.cwl
inputs:
- id: input
  doc: The input samples as SAM or BAM files
  type: string[]
  inputBinding:
    prefix: --input
- id: sorted
  doc: Whether the BAM input files are sorted. Default false
  type: boolean
  inputBinding:
    prefix: --sorted
- id: input_format
  doc: The input samples format {bam, sam, bz2}. Default bz2
  type: string
  inputBinding:
    prefix: --input_format
- id: output_dir
  doc: The output directory
  type: string
  inputBinding:
    prefix: --output_dir
- id: breath_threshold
  doc: The breath threshold for the consensus markers. Default 80 (%)
  type: string
  inputBinding:
    prefix: --breath_threshold
- id: nprocs
  doc: The number of threads to execute the script
  type: string
  inputBinding:
    prefix: --nprocs
outputs: []
cwlVersion: v1.1
baseCommand:
- sample2markers.py
