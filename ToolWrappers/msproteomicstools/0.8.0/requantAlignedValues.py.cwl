class: CommandLineTool
id: requantAlignedValues.py.cwl
inputs:
- id: in_peak_groups_in_file
  doc: "OUTPUT [--file_format FILE_FORMAT]\n[--out_matrix MATRIX_OUTFILE]\n[--matrix_output_method\
    \ MATRIX_OUTPUT_METHOD]\n[--border_option median] [--dry_run] [--test]\n[--cache_in_memory]\
    \ [--method METHOD]\n[--realign_runs REALIGN_METHOD]\n[--verbosity VERBOSITY]\
    \ [--do_single_run]\n[--disable_isotopic_grouping]\n[--disable_isotopic_transfer]"
  type: File
  inputBinding:
    prefix: --peakgroups_infile
- id: in_disable_isotopic_grouping
  doc: "Disable grouping of isotopic variants by\npeptide_group_label, thus disabling\
    \ matching of\nisotopic variants of the same peptide across channels.\nIf turned\
    \ off, each isotopic channel will be matched\nindependently of the other. If enabled,\
    \ the more\ncertain identification will be used to infer the\nlocation of the\
    \ peak in the other channel."
  type: boolean
  inputBinding:
    prefix: --disable_isotopic_grouping
- id: in_disable_isotopic_transfer
  doc: "Disable the transfer of isotopic boundaries in all\ncases. If enabled (default),\
    \ the best (best score)\nisotopic channel dictates the peak boundaries and all\n\
    other channels use those boundaries. This ensures\nconsistency in peak picking\
    \ in all cases.\n"
  type: boolean
  inputBinding:
    prefix: --disable_isotopic_transfer
- id: in_in
  doc: ''
  type: string[]
  inputBinding:
    prefix: --in
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- requantAlignedValues.py
