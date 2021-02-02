class: CommandLineTool
id: spectrast2tsv.py.cwl
inputs:
- id: in_remove_duplicate_masses
  doc: Remove duplicate masses from labeling
  type: boolean
  inputBinding:
    prefix: -d
- id: in_use_theoretical_mass
  doc: Use theoretical mass
  type: boolean
  inputBinding:
    prefix: -e
- id: in_fastafile_fasta_file
  doc: fasta_file    Fasta file to relate peptides to their proteins (this is optional).
  type: boolean
  inputBinding:
    prefix: -f
- id: in_massmodifs_list_allowed
  doc: 'mass_modifs   List of allowed fragment mass modifications. Useful for phosphorylation
    and neutral losses. Example: -g -79.97,-97.98,-17.03,-18.01'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_labelingfile_file_containing
  doc: labeling_file File containing the amino acid isotopic labeling mass shifts.
    If this option is used, heavy transitions will be generated.
  type: boolean
  inputBinding:
    prefix: -i
- id: in_outputkey_select_output
  doc: 'output_key    Select the output provided. Keys available: openswath, peakview.
    Default: peakview'
  type: boolean
  inputBinding:
    prefix: -k
- id: in_masslimits_lower_limits
  doc: 'mass_limits   Lower and upper mass limits of fragment ions. Example: -l 400,2000'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_modsfile_file_modifications
  doc: mods_file     File with the modifications delta mass
  type: boolean
  inputBinding:
    prefix: -m
- id: in_int_max_number
  doc: 'int           Max number of reported ions per peptide/z. Default: 20'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_int_min_number
  doc: 'int           Min number of reported ions per peptide/z. Default: 3'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_float_maximum_error
  doc: 'float         Maximum error allowed at the annotation of a fragment ion. Default:
    0.05'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_int_number_use
  doc: 'int            Number of processors to use (only for isoforms!). Default:
    1'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_ionseries_list_used
  doc: 'ion_series    List of ion series to be used. Example: -s y,b'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_timescale_options_minutes
  doc: 'time-scale    Options: minutes, seconds. Default: seconds.'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_unimodcode_use_code
  doc: 'unimod-code    Use this unimod code as a switching modification. Useful for
    phosphorylations. Example: -u 21'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_verbose_mode
  doc: Verbose mode.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_swathsfile_file_containing
  doc: swaths_file   File containing the swath ranges. This is used to remove transitions
    with Q3 falling in the swath mass range. (line breaks in windows/unix format)
  type: boolean
  inputBinding:
    prefix: -w
- id: in_allowedfrgz_fragment_ion
  doc: 'allowed_frg_z Fragment ion charge states allowed. Default: 1,2'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_uisorder_when_using
  doc: 'UIS-order     When using a switching modification, this determines the UIS
    order to be calculated. If -1 is set, all transitions for each isoform will be
    reported. Default : 2'
  type: boolean
  inputBinding:
    prefix: -y
- id: in_outfile_output_file
  doc: 'outfile       Output file name (default: appends _peakview.txt)'
  type: File
  inputBinding:
    prefix: -a
- id: in_spectra_st_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile_output_file
  doc: 'outfile       Output file name (default: appends _peakview.txt)'
  type: File
  outputBinding:
    glob: $(inputs.in_outfile_output_file)
cwlVersion: v1.1
baseCommand:
- spectrast2tsv.py
