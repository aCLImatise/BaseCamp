class: CommandLineTool
id: ktImportHits.cwl
inputs:
- id: hits
  doc: Tabular file whose fields are [query, subject, score]. Subject must be an accession
    or contain one in the fourth field of pipe notation (e.g. "gi|12345|xx|ABC123.1|".
    The subject and score can be omitted to include a query that has no hits, which
    will be assigned a taxonomy ID of -1. By default, separate datasets will be created
    for each input (see [-c]).
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
- ktImportHits
