class: CommandLineTool
id: kallisto_pseudo.cwl
inputs:
- id: in_index
  doc: "Filename for the kallisto index to be used for\npseudoalignment"
  type: File?
  inputBinding:
    prefix: --index
- id: in_output_dir
  doc: Directory to write output to
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_umi
  doc: First file in pair is a UMI file
  type: boolean?
  inputBinding:
    prefix: --umi
- id: in_batch
  doc: "Process files listed in FILE\n--quant                   Quantify using EM\
    \ algorithm (only in batch mode)\n--single                  Quantify single-end\
    \ reads"
  type: File?
  inputBinding:
    prefix: --batch
- id: in_fragment_length
  doc: Estimated average fragment length
  type: long?
  inputBinding:
    prefix: --fragment-length
- id: in_sd
  doc: "Estimated standard deviation of fragment length\n(default: -l, -s values are\
    \ estimated from paired\nend data, but are required when using --single)"
  type: long?
  inputBinding:
    prefix: --sd
- id: in_threads
  doc: 'Number of threads to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_arguments
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_fast_q_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Directory to write output to
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- kallisto
- pseudo
