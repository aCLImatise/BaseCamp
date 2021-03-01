class: CommandLineTool
id: sample2markers.py.cwl
inputs:
- id: in_input
  doc: The input samples as SAM or BAM files
  type: string[]
  inputBinding:
    prefix: --input
- id: in_sorted
  doc: Whether the BAM input files are sorted. Default false
  type: boolean?
  inputBinding:
    prefix: --sorted
- id: in_input_format
  doc: The input samples format {bam, sam, bz2}. Default bz2
  type: long?
  inputBinding:
    prefix: --input_format
- id: in_output_dir
  doc: The output directory
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_breadth_threshold
  doc: "The breadth of coverage threshold for the consensus\nmarkers. Default 80 (%)"
  type: long?
  inputBinding:
    prefix: --breadth_threshold
- id: in_nprocs
  doc: "The number of threads to execute the script\n"
  type: long?
  inputBinding:
    prefix: --nprocs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: The output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- sample2markers.py
