class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fseq.cwl
inputs:
- id: background_directory_defaultnone
  doc: background directory (default=none)
  type: string
  inputBinding:
    prefix: -b
- id: genomic_count_sequence
  doc: genomic count of sequence reads (defualt = calculated)
  type: string
  inputBinding:
    prefix: -c
- id: input_directory_defaultcurrent
  doc: input directory (default=current directory)
  type: string
  inputBinding:
    prefix: -d
- id: fragment_size_defaultestimated
  doc: fragment size (default=estimated from data)
  type: string
  inputBinding:
    prefix: -f
- id: feature_length_default
  doc: feature length (default=600)
  type: string
  inputBinding:
    prefix: -l
- id: output_directory_defaultcurrent
  doc: output directory (default=current directory)
  type: string
  inputBinding:
    prefix: -o
- id: of
  doc: output format (default wig)
  type: string
  inputBinding:
    prefix: -of
- id: ploidyinput_directory_defaultnone
  doc: ploidy/input directory (default=none)
  type: string
  inputBinding:
    prefix: -p
- id: wiggle_step_default
  doc: wiggle track step (default=1)
  type: string
  inputBinding:
    prefix: -s
- id: threshold_standard_deviations
  doc: threshold (standard deviations) (default=4.0)
  type: string
  inputBinding:
    prefix: -t
- id: verbose_output
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: -v
- id: wg
  doc: wg threshold set (defualt = calculated)
  type: string
  inputBinding:
    prefix: -wg
outputs: []
cwlVersion: v1.1
baseCommand:
- fseq
