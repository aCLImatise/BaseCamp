class: CommandLineTool
id: ceqlogo.cwl
inputs:
- id: in_loads_motif_option
  doc: "Loads a motif from the file specified by the\nprevious -i option. The motif\
    \ ID or position\ncan be used."
  type: File?
  inputBinding:
    prefix: -m
- id: in_number_samples_i
  doc: "Number of samples for previously loaded motif\n(-m or -i)."
  type: long?
  inputBinding:
    prefix: -n
- id: in_shift_m_i
  doc: Shift for previously loaded motif (-m or -i).
  type: string?
  inputBinding:
    prefix: -s
- id: in_reverse_complement_motifm
  doc: "Reverse complement previously loaded motif\n(-m or -i)."
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_pseudocounts_loaded_motifs
  doc: 'Pseudocounts for loaded motifs; default: 0.'
  type: long?
  inputBinding:
    prefix: -p
- id: in_prefentially_lookup_motifs
  doc: "Prefentially lookup motifs by position;\ndefault: prefer the ID."
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_output_file_path
  doc: Output file path. Default is stdout.
  type: File?
  inputBinding:
    prefix: -o
- id: in_format_output_eps
  doc: 'Format of output (EPS, PNG); default: EPS'
  type: string?
  inputBinding:
    prefix: -f
- id: in_height_output_logo
  doc: 'Height of output logo in cm (real # > 0).'
  type: long?
  inputBinding:
    prefix: -h
- id: in_width_output_logo
  doc: 'Width of output logo in cm (real # > 0).'
  type: long?
  inputBinding:
    prefix: -w
- id: in_label_for_title
  doc: Label for title.
  type: string?
  inputBinding:
    prefix: -t
- id: in_descriptive_fine_print
  doc: Descriptive fine print.
  type: string?
  inputBinding:
    prefix: -d
- id: in_label_for_xaxis
  doc: Label for x-axis.
  type: string?
  inputBinding:
    prefix: -x
- id: in_label_yaxis_default
  doc: 'Label for y-axis; default: "bits".'
  type: string?
  inputBinding:
    prefix: -y
- id: in_number_bits_tic
  doc: Number of bits between tic marks.
  type: long?
  inputBinding:
    prefix: -c
- id: in_fraction_error_show
  doc: 'Fraction of error bar to show (real # > 0).'
  type: long?
  inputBinding:
    prefix: -e
- id: in_turn_small_correction
  doc: '...................   Turn on small sample correction.'
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_turn_bar_ends
  doc: '...................   Turn on bar ends.'
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_turn_error_bars
  doc: '...................   Turn on error bars.'
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_turn_outlining_characters
  doc: '...................   Turn on outlining of characters.'
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_turn_boxing_characters
  doc: '...................   Turn on boxing of characters'
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_turn_numbering_xaxis
  doc: '...................   Turn off numbering of x-axis.'
  type: boolean?
  inputBinding:
    prefix: -N
- id: in__turn_yaxis
  doc: '...................   Turn off y-axis'
  type: boolean?
  inputBinding:
    prefix: -Y
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_path
  doc: Output file path. Default is stdout.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- ceqlogo
