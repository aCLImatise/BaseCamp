class: CommandLineTool
id: tandem2pin.cwl
inputs:
- id: in_png_as_ef
  doc: Calculate feature based on N-linked glycosylation
  type: boolean
  inputBinding:
    prefix: --PNGaseF
- id: in_ms_two_file
  doc: File containing spectra and retention time. The file
  type: File
  inputBinding:
    prefix: --ms2-file
- id: in_isotope
  doc: Mass difference calculated to closest isotope mass
  type: boolean
  inputBinding:
    prefix: --isotope
- id: in_psm_annotation
  doc: An anotation scheme used to convert the psms from
  type: string
  inputBinding:
    prefix: --psm-annotation
- id: in_pattern
  doc: Pattern used to identify the decoy PSMs. Default =
  type: boolean
  inputBinding:
    prefix: --pattern
- id: in_databases
  doc: Link to the fasta database/s used in the search
  type: boolean
  inputBinding:
    prefix: --databases
- id: in_cleavages
  doc: Number of allowed miss cleavages used in the search
  type: boolean
  inputBinding:
    prefix: --cleavages
- id: in_min_length
  doc: Minimum peptide length allowed used in the search
  type: boolean
  inputBinding:
    prefix: --min-length
- id: in_max_length
  doc: Maximum peptide length allowed used in the search
  type: boolean
  inputBinding:
    prefix: --max-length
- id: in_min_mass
  doc: Minimum peptide mass allowed used in the search
  type: boolean
  inputBinding:
    prefix: --min-mass
- id: in_max_mass
  doc: Maximum peptide mass allowed used in the search
  type: boolean
  inputBinding:
    prefix: --max-mass
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_target_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tandem2pin
