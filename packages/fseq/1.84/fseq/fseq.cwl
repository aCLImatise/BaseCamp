class: CommandLineTool
id: fseq.cwl
inputs:
- id: in_background_directory_defaultnone
  doc: background directory (default=none)
  type: Directory
  inputBinding:
    prefix: -b
- id: in_genomic_count_sequence
  doc: "genomic count of sequence reads (defualt =\ncalculated)"
  type: string
  inputBinding:
    prefix: -c
- id: in_input_directory_defaultcurrent
  doc: input directory (default=current directory)
  type: Directory
  inputBinding:
    prefix: -d
- id: in_fragment_size_defaultestimated
  doc: fragment size (default=estimated from data)
  type: long
  inputBinding:
    prefix: -f
- id: in_feature_length_default
  doc: feature length (default=600)
  type: long
  inputBinding:
    prefix: -l
- id: in_output_directory_defaultcurrent
  doc: output directory (default=current directory)
  type: Directory
  inputBinding:
    prefix: -o
- id: in_of
  doc: output format (default wig)
  type: string
  inputBinding:
    prefix: -of
- id: in_ploidyinput_directory_defaultnone
  doc: ploidy/input directory (default=none)
  type: Directory
  inputBinding:
    prefix: -p
- id: in_wiggle_track_default
  doc: wiggle track step (default=1)
  type: long
  inputBinding:
    prefix: -s
- id: in_threshold_standard_deviations
  doc: threshold (standard deviations) (default=4.0)
  type: double
  inputBinding:
    prefix: -t
- id: in_verbose_output
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: -v
- id: in_wg
  doc: wg threshold set (defualt = calculated)
  type: string
  inputBinding:
    prefix: -wg
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_defaultcurrent
  doc: output directory (default=current directory)
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory_defaultcurrent)
cwlVersion: v1.1
baseCommand:
- fseq
