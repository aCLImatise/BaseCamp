class: CommandLineTool
id: ../../../ceqlogo.cwl
inputs:
- id: loads_motif_file
  doc: Loads a motif from the file specified by the previous -i option. The motif
    ID or position can be used.
  type: string
  inputBinding:
    prefix: -m
- id: number_samples_previously
  doc: Number of samples for previously loaded motif (-m or -i).
  type: string
  inputBinding:
    prefix: -n
- id: shift_previously_loaded
  doc: Shift for previously loaded motif (-m or -i).
  type: string
  inputBinding:
    prefix: -s
- id: reverse_complement_previously
  doc: Reverse complement previously loaded motif (-m or -i).
  type: boolean
  inputBinding:
    prefix: -r
- id: pseudocounts_loaded_motifs
  doc: 'Pseudocounts for loaded motifs; default: 0.'
  type: string
  inputBinding:
    prefix: -p
- id: prefentially_lookup_motifs
  doc: 'Prefentially lookup motifs by position; default: prefer the ID.'
  type: boolean
  inputBinding:
    prefix: -l
- id: output_file_path
  doc: Output file path. Default is stdout.
  type: string
  inputBinding:
    prefix: -o
- id: format_png_eps
  doc: 'Format of output (EPS, PNG); default: EPS'
  type: string
  inputBinding:
    prefix: -f
- id: height_output_real
  doc: 'Height of output logo in cm (real # > 0).'
  type: string
  inputBinding:
    prefix: -h
- id: width_output_logo
  doc: 'Width of output logo in cm (real # > 0).'
  type: string
  inputBinding:
    prefix: -w
- id: label_for_title
  doc: Label for title.
  type: string
  inputBinding:
    prefix: -t
- id: descriptive_fine_print
  doc: Descriptive fine print.
  type: string
  inputBinding:
    prefix: -d
- id: label_for_xaxis
  doc: Label for x-axis.
  type: string
  inputBinding:
    prefix: -x
- id: label_yaxis_default
  doc: 'Label for y-axis; default: "bits".'
  type: string
  inputBinding:
    prefix: -y
- id: number_bits_tic
  doc: Number of bits between tic marks.
  type: string
  inputBinding:
    prefix: -c
- id: fraction_show_real
  doc: 'Fraction of error bar to show (real # > 0).'
  type: string
  inputBinding:
    prefix: -e
- id: turn_small_sample
  doc: '...................   Turn on small sample correction.'
  type: boolean
  inputBinding:
    prefix: -S
- id: turn_bar_ends
  doc: '...................   Turn on bar ends.'
  type: boolean
  inputBinding:
    prefix: -B
- id: turn_error_bars
  doc: '...................   Turn on error bars.'
  type: boolean
  inputBinding:
    prefix: -E
- id: turn_outlining_characters
  doc: '...................   Turn on outlining of characters.'
  type: boolean
  inputBinding:
    prefix: -O
- id: turn_boxing_characters
  doc: '...................   Turn on boxing of characters  '
  type: boolean
  inputBinding:
    prefix: -X
- id: turn_numbering_xaxis
  doc: '...................   Turn off numbering of x-axis.'
  type: boolean
  inputBinding:
    prefix: -N
- id: _turn_yaxis
  doc: '...................   Turn off y-axis '
  type: boolean
  inputBinding:
    prefix: -Y
outputs: []
cwlVersion: v1.1
baseCommand:
- ceqlogo
