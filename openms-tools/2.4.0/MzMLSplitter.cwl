class: CommandLineTool
id: MzMLSplitter.cwl
inputs:
- id: in
  doc: "*        Input file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Prefix for output files ('_part1of2.mzML' etc. will be appended; default:\
    \ same as 'in' without the file extension)"
  type: File
  inputBinding:
    prefix: -out
- id: parts
  doc: "Number of parts to split into (takes precedence over 'size' if set) (default:\
    \ '1' min: '1')"
  type: string
  inputBinding:
    prefix: -parts
- id: size
  doc: "Approximate upper limit for resulting file sizes (in 'unit') (default: '0'\
    \ min: '0')"
  type: string
  inputBinding:
    prefix: -size
- id: unit
  doc: "Unit for 'size' (base 1024) (default: 'MB' valid: 'KB', 'MB', 'GB')"
  type: string
  inputBinding:
    prefix: -unit
- id: no_chrom
  doc: Remove chromatograms, keep only spectra.
  type: boolean
  inputBinding:
    prefix: -no_chrom
- id: no_spec
  doc: Remove spectra, keep only chromatograms.
  type: boolean
  inputBinding:
    prefix: -no_spec
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
- MzMLSplitter
