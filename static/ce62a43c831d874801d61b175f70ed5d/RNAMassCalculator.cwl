class: CommandLineTool
id: RNAMassCalculator.cwl
inputs:
- id: in_in
  doc: "Input file with RNA sequences and optionally charge numbers (mutually exclusive\
    \ to 'in_seq') (valid formats: 'txt')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_in_seq
  doc: List of RNA sequences (mutually exclusive to 'in')
  type: string?
  inputBinding:
    prefix: -in_seq
- id: in_out
  doc: "Output file; if empty, output is written to the screen (valid formats: 'txt')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_charge
  doc: "List of charge states; required if 'in_seq' is given (default: '[0]')"
  type: long?
  inputBinding:
    prefix: -charge
- id: in_format
  doc: "Output format ('list': human-readable list, 'table': CSV-like table, 'mass_only':\
    \ mass values only, 'mz_only': m/z values only)\n(default: 'list' valid: 'list',\
    \ 'table', 'mass_only', 'mz_only')"
  type: string?
  inputBinding:
    prefix: -format
- id: in_average_mass
  doc: Compute average (instead of monoisotopic) oligonucleotide masses
  type: boolean?
  inputBinding:
    prefix: -average_mass
- id: in_fragment_type
  doc: "For what type of sequence/fragment the mass should be computed\n(default:\
    \ 'full' valid: 'full', 'internal', '5-prime', '3-prime', 'a-B-ion', 'a-ion',\
    \ 'b-ion', 'c-ion', 'd-ion', 'w-ion', 'x-ion', 'y-ion', 'z-ion')"
  type: long?
  inputBinding:
    prefix: -fragment_type
- id: in_separator
  doc: Field separator for 'table' output format; by default, the 'tab' character
    is used
  type: string?
  inputBinding:
    prefix: -separator
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output file; if empty, output is written to the screen (valid formats: 'txt')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- RNAMassCalculator
