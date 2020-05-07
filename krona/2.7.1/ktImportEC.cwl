class: CommandLineTool
id: ktImportEC.cwl
inputs:
- id: ec_numbers
  doc: Tab-delimited files with EC numbers and (optionally) query IDs, magnitudes
    and scores. By default, query IDs, EC numbers and scores will be taken from columns
    1, 2 and 3, respectively (see -q, -e, -s, and -m). By default, separate datasets
    will be created for each input (see [-c]).
  type: string
  inputBinding:
    position: 0
- id: magnitudes
  doc: Optional file listing query IDs with magnitudes, separated by tabs. This can
    be used to account for read length or contig depth to obtain a more accurate representation
    of abundance. By default, query sequences without specified magnitudes will be
    assigned a magnitude of 1. Magnitude files for assemblies in ACE format can be
    created with ktGetContigMagnitudes.
  type: string
  inputBinding:
    position: 1
- id: name
  doc: A name to show in the list of datasets in the Krona chart (if multiple input
    files are present and [-c] is not specified). By default, the basename of the
    file will be used. _________
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ktImportEC
