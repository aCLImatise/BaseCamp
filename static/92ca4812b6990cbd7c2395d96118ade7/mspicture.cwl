class: CommandLineTool
id: mspicture.cwl
inputs:
- id: in_arg_output_directory
  doc: '[ --outdir ] arg (=.) : output directory'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_arg_configuration_file
  doc: '[ --config ] arg      : configuration file (optionName=value) (ignored)'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_set_label
  doc: '[ --label ] arg       : set filename label to xxx'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_mz_low
  doc: ': set low m/z cutoff'
  type: string?
  inputBinding:
    prefix: --mzLow
- id: in_mz_high
  doc: ': set high m/z cutoff'
  type: string?
  inputBinding:
    prefix: --mzHigh
- id: in_timescale
  doc: ': set scale of time axis'
  type: string?
  inputBinding:
    prefix: --timeScale
- id: in_arg_set_histogram
  doc: '[ --binCount ] arg    : set histogram bin count'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_render_linearly_time
  doc: '[ --time ]            : render linearly to time'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_render_linearly_scans
  doc: '[ --scan ]            : render linearly to scans'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_z
  doc: '[ --zRadius ] arg     : set intensity function z-score radius [=2]'
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_arg_set_output
  doc: '[ --width ] arg       : set output bitmap width (default is calculated)'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_bry
  doc: ': use blue-red-yellow gradient'
  type: boolean?
  inputBinding:
    prefix: --bry
- id: in_grey
  doc: ': use grey-scale gradient'
  type: boolean?
  inputBinding:
    prefix: --grey
- id: in_bin_sum
  doc: ': sum intensity in bins [default = max intensity]'
  type: boolean?
  inputBinding:
    prefix: --binSum
- id: in_indicate_masses_selected
  doc: '[ --ms2locs ]         : indicate masses selected for ms2'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_shape
  doc: ": shape of the pseudo2d gel markup\n[circle(default)|square]."
  type: long?
  inputBinding:
    prefix: --shape
- id: in_arg_pepxml_file
  doc: '[ --pepxml ] arg      : pepxml file location'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_msinspect_output
  doc: '[ --msi ] arg         : msInspect output file location'
  type: File?
  inputBinding:
    prefix: -i
- id: in_arg_peptide_file
  doc: '[ --flat ] arg        : peptide file location (nativeID rt mz score seq)'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_processes_commands
  doc: '[ --commands ] arg    : processes commands'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_prints_extra_information
  doc: '[ --verbose ]         : prints extra information.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_input_filenames
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_directory
  doc: '[ --outdir ] arg (=.) : output directory'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_arg_output_directory)
- id: out_arg_msinspect_output
  doc: '[ --msi ] arg         : msInspect output file location'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_msinspect_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteowizard:3.0.9992
cwlVersion: v1.1
baseCommand:
- mspicture
