class: CommandLineTool
id: SCALOP.cwl
inputs:
- id: in_numbering_scheme
  doc: Antibody chain numbering scheme
  type: string?
  inputBinding:
    prefix: --numbering_scheme
- id: in_cdr_definition
  doc: CDR region definition
  type: string?
  inputBinding:
    prefix: --cdr_definition
- id: in_assign
  doc: Input sequence(s)
  type: string?
  inputBinding:
    prefix: --assign
- id: in_output
  doc: Output directory (default = console output)
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_output_ext
  doc: Output format
  type: string?
  inputBinding:
    prefix: --output_ext
- id: in_db_version
  doc: "Database version in YYYY-MM (e.g. '2017-07') or YYYY\nfor data included by\
    \ the end of the year"
  type: long?
  inputBinding:
    prefix: --db_version
- id: in_structure
  doc: Input framework structure
  type: string?
  inputBinding:
    prefix: --structure
- id: in_loop_db
  doc: Loop structures directory
  type: Directory?
  inputBinding:
    prefix: --loopdb
- id: in_hc
  doc: Heavy Chain ID
  type: string?
  inputBinding:
    prefix: --hc
- id: in_lc
  doc: Light Chain ID
  type: string?
  inputBinding:
    prefix: --lc
- id: in_update
  doc: "Perform an update to a copy of the database that you\nhave write permissions\
    \ for"
  type: boolean?
  inputBinding:
    prefix: --update
- id: in_db_dir
  doc: '[for updater] Loop database directory'
  type: Directory?
  inputBinding:
    prefix: --dbdir
- id: in_struc_cut_off
  doc: '[for updater] Resolution of structures to be clustered'
  type: string?
  inputBinding:
    prefix: --struc_cutoff
- id: in_b_factor_cut_off
  doc: "[for updater] Maximum B factor of backbone atoms in\nthe loop"
  type: string?
  inputBinding:
    prefix: --bfactor_cutoff
- id: in_armadillo_include
  doc: '[for updater] Resolution of structures to be clustered'
  type: string?
  inputBinding:
    prefix: --armadillo_include
- id: in_sab_dab_script
  doc: "[for updater] Location of SAbDab bin script (e.g.\n~/bin/)"
  type: string?
  inputBinding:
    prefix: --sabdabscript
- id: in_sabdabpydir
  doc: "[for updater] Location of ABDB python module (e.g.\n~/bin/Python/ABDB)"
  type: string?
  inputBinding:
    prefix: --sabdabpydir
- id: in_s_abd_abu
  doc: "[for updater] Whether or not to update SAbDab\n([yes]/no)"
  type: string?
  inputBinding:
    prefix: --sabdabu
- id: in_scalo_p
  doc: Sequence-based antibody Canonical LOoP structure annotation
  type: string
  inputBinding:
    position: 0
- id: in_wing_ki_wong
  doc: Wing Ki Wong
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output directory (default = console output)
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scalop:2021.01.27--py_0
cwlVersion: v1.1
baseCommand:
- SCALOP
