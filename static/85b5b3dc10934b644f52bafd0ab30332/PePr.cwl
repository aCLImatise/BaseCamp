class: CommandLineTool
id: PePr.cwl
inputs:
- id: in_parameter_file
  doc: provide a file that contain the parameters
  type: File?
  inputBinding:
    prefix: --parameter-file
- id: in_chip_one
  doc: chip1 file names separated by comma
  type: long?
  inputBinding:
    prefix: --chip1
- id: in_input_one
  doc: input1 file names separated by comma
  type: long?
  inputBinding:
    prefix: --input1
- id: in_chip_two
  doc: chip2 file names separated by comma
  type: long?
  inputBinding:
    prefix: --chip2
- id: in_input_two
  doc: input2 file names separated by comma
  type: long?
  inputBinding:
    prefix: --input2
- id: in_file_format
  doc: bed, sam, bam, sampe, bampe...
  type: File?
  inputBinding:
    prefix: --file-format
- id: in_shift_size
  doc: Half the fragment size.
  type: long?
  inputBinding:
    prefix: --shiftsize
- id: in_window_size
  doc: Window sizes
  type: long?
  inputBinding:
    prefix: --windowsize
- id: in_diff
  doc: Perform differential binding instead of peak-calling
  type: boolean?
  inputBinding:
    prefix: --diff
- id: in_name
  doc: the experimental name. NA if none provided
  type: string?
  inputBinding:
    prefix: --name
- id: in_threshold
  doc: p-value threshold. Default 1e-5.
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_peak_type
  doc: sharp or broad. Default broad.
  type: string?
  inputBinding:
    prefix: --peaktype
- id: in_num_processors
  doc: number of cores for use.
  type: long?
  inputBinding:
    prefix: --num-processors
- id: in_input_directory
  doc: where the data files are. Absolute path recommended.
  type: Directory?
  inputBinding:
    prefix: --input-directory
- id: in_output_directory
  doc: where you want the output files to be
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_normalization
  doc: "Normalization method. inter-group, intra-group, scale\nor no. Must manually\
    \ specify for differential binding\nanalysis."
  type: string?
  inputBinding:
    prefix: --normalization
- id: in_keep_max_dup
  doc: "maximum number of reads to keep at each position.\nif not specified, will\
    \ not remove any duplicate."
  type: long?
  inputBinding:
    prefix: --keep-max-dup
- id: in_pep_r_post_process
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: where you want the output files to be
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- PePr
