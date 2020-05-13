class: CommandLineTool
id: MassCalculator.cwl
inputs:
- id: in
  doc: "Input file with peptide sequences and optionally charge numbers (mutually\
    \ exclusive to 'in_seq') (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -in
- id: in_seq
  doc: List of peptide sequences (mutually exclusive to 'in')
  type: string
  inputBinding:
    prefix: -in_seq
- id: out
  doc: "Output file; if empty, output is written to the screen (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -out
- id: charge
  doc: "List of charge states; required if 'in_seq' is given (default: '[0]')"
  type: string
  inputBinding:
    prefix: -charge
- id: format
  doc: "Output format ('list': human-readable list, 'table': CSV-like table, 'mass_only':\
    \ mass values only, 'mz_only': m/z values only) (default: 'list' valid: 'list',\
    \ 'table', 'mass_only', 'mz_only')"
  type: string
  inputBinding:
    prefix: -format
- id: average_mass
  doc: Compute average (instead of monoisotopic) peptide masses
  type: boolean
  inputBinding:
    prefix: -average_mass
- id: fragment_type
  doc: "For what type of sequence/fragment the mass should be computed (default: 'full'\
    \ valid: 'full', 'internal', 'N-terminal', 'C-terminal', 'a-ion', 'b-ion', 'c-ion',\
    \ 'x-ion', 'y-ion', 'z-ion')"
  type: string
  inputBinding:
    prefix: -fragment_type
- id: separator
  doc: Field separator for 'table' output format; by default, the 'tab' character
    is used
  type: string
  inputBinding:
    prefix: -separator
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- MassCalculator
