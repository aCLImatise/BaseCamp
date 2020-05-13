class: CommandLineTool
id: GenomeBaser_OPTIONS_GENUS_SPECIES_OUT_DATABASE_LOCATION.cwl
inputs:
- id: check_deps
  doc: / --no-check_deps  Check that non-python dependencies exist
  type: boolean
  inputBinding:
    prefix: --check_deps
outputs: []
cwlVersion: v1.1
baseCommand:
- GenomeBaser
- OPTIONS
- GENUS
- SPECIES
- OUT_DATABASE_LOCATION
