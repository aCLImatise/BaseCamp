class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mspicture.cwl
inputs:
- id: arg_output_directory
  doc: '[ --outdir ] arg (=.) : output directory'
  type: boolean
  inputBinding:
    prefix: -o
- id: arg_configuration_file
  doc: '[ --config ] arg      : configuration file (optionName=value) (ignored)'
  type: boolean
  inputBinding:
    prefix: -c
- id: arg_set_filename
  doc: '[ --label ] arg       : set filename label to xxx'
  type: boolean
  inputBinding:
    prefix: -l
- id: mz_low
  doc: ': set low m/z cutoff'
  type: string
  inputBinding:
    prefix: --mzLow
- id: mz_high
  doc: ': set high m/z cutoff'
  type: string
  inputBinding:
    prefix: --mzHigh
- id: timescale
  doc: ': set scale of time axis'
  type: string
  inputBinding:
    prefix: --timeScale
- id: arg_set_count
  doc: '[ --binCount ] arg    : set histogram bin count'
  type: boolean
  inputBinding:
    prefix: -b
- id: render_linearly_time
  doc: '[ --time ]            : render linearly to time'
  type: boolean
  inputBinding:
    prefix: -t
- id: render_linearly_scans
  doc: '[ --scan ]            : render linearly to scans'
  type: boolean
  inputBinding:
    prefix: -s
- id: z
  doc: '[ --zRadius ] arg     : set intensity function z-score radius [=2]'
  type: boolean
  inputBinding:
    prefix: -z
- id: arg_set_output
  doc: '[ --width ] arg       : set output bitmap width (default is calculated)'
  type: boolean
  inputBinding:
    prefix: -w
- id: bry
  doc: ': use blue-red-yellow gradient'
  type: boolean
  inputBinding:
    prefix: --bry
- id: grey
  doc: ': use grey-scale gradient'
  type: boolean
  inputBinding:
    prefix: --grey
- id: bin_sum
  doc: ': sum intensity in bins [default = max intensity]'
  type: boolean
  inputBinding:
    prefix: --binSum
- id: indicate_masses_selected
  doc: '[ --ms2locs ]         : indicate masses selected for ms2'
  type: boolean
  inputBinding:
    prefix: -m
- id: shape
  doc: ': shape of the pseudo2d gel markup  [circle(default)|square].'
  type: string
  inputBinding:
    prefix: --shape
- id: arg_pepxml_file
  doc: '[ --pepxml ] arg      : pepxml file location'
  type: boolean
  inputBinding:
    prefix: -p
- id: arg_msinspect_output
  doc: '[ --msi ] arg         : msInspect output file location'
  type: boolean
  inputBinding:
    prefix: -i
- id: arg_peptide_location
  doc: '[ --flat ] arg        : peptide file location (nativeID rt mz score seq)'
  type: boolean
  inputBinding:
    prefix: -f
- id: arg_processes_commands
  doc: '[ --commands ] arg    : processes commands'
  type: boolean
  inputBinding:
    prefix: -x
- id: prints_extra_information
  doc: '[ --verbose ]         : prints extra information.'
  type: boolean
  inputBinding:
    prefix: -v
- id: input_filenames
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mspicture
