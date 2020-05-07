class: CommandLineTool
id: PePr_preprocess.cwl
inputs:
- id: parameter_file
  doc: provide a file that contain the parameters
  type: string
  inputBinding:
    prefix: --parameter-file
- id: chip1
  doc: chip1 file names separated by comma
  type: string
  inputBinding:
    prefix: --chip1
- id: input_1
  doc: input1 file names separated by comma
  type: string
  inputBinding:
    prefix: --input1
- id: chip2
  doc: chip2 file names separated by comma
  type: string
  inputBinding:
    prefix: --chip2
- id: input_2
  doc: input2 file names separated by comma
  type: string
  inputBinding:
    prefix: --input2
- id: file_format
  doc: bed, sam, bam, sampe, bampe...
  type: string
  inputBinding:
    prefix: --file-format
- id: shift_size
  doc: Half the fragment size.
  type: string
  inputBinding:
    prefix: --shiftsize
- id: window_size
  doc: Window sizes
  type: string
  inputBinding:
    prefix: --windowsize
- id: diff
  doc: Perform differential binding instead of peak-calling
  type: boolean
  inputBinding:
    prefix: --diff
- id: name
  doc: the experimental name. NA if none provided
  type: string
  inputBinding:
    prefix: --name
- id: threshold
  doc: p-value threshold. Default 1e-5.
  type: string
  inputBinding:
    prefix: --threshold
- id: peak_type
  doc: sharp or broad. Default broad.
  type: string
  inputBinding:
    prefix: --peaktype
- id: num_processors
  doc: number of cores for use.
  type: string
  inputBinding:
    prefix: --num-processors
- id: input_directory
  doc: where the data files are. Absolute path recommended.
  type: string
  inputBinding:
    prefix: --input-directory
- id: output_directory
  doc: where you want the output files to be
  type: string
  inputBinding:
    prefix: --output-directory
- id: normalization
  doc: Normalization method. inter-group, intra-group, scale or no. Must manually
    specify for differential binding analysis.
  type: string
  inputBinding:
    prefix: --normalization
- id: keep_max_dup
  doc: maximum number of reads to keep at each position. if not specified, will not
    remove any duplicate.
  type: string
  inputBinding:
    prefix: --keep-max-dup
outputs: []
cwlVersion: v1.1
baseCommand:
- PePr-preprocess
