class: CommandLineTool
id: MzMLSplitter.cwl
inputs:
- id: in_in
  doc: "*        Input file (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Prefix for output files ('_part1of2.mzML' etc. will be appended; default:\
    \ same as 'in' without the file extension)"
  type: File?
  inputBinding:
    prefix: -out
- id: in_parts
  doc: "Number of parts to split into (takes precedence over 'size' if set) (default:\
    \ '1' min: '1')"
  type: long?
  inputBinding:
    prefix: -parts
- id: in_size
  doc: "Approximate upper limit for resulting file sizes (in 'unit') (default: '0'\
    \ min: '0')"
  type: long?
  inputBinding:
    prefix: -size
- id: in_unit
  doc: "Unit for 'size' (base 1024) (default: 'MB' valid: 'KB', 'MB', 'GB')"
  type: long?
  inputBinding:
    prefix: -unit
- id: in_no_chrom
  doc: Remove chromatograms, keep only spectra.
  type: boolean?
  inputBinding:
    prefix: -no_chrom
- id: in_no_spec
  doc: Remove spectra, keep only chromatograms.
  type: boolean?
  inputBinding:
    prefix: -no_spec
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
  doc: "Prefix for output files ('_part1of2.mzML' etc. will be appended; default:\
    \ same as 'in' without the file extension)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- MzMLSplitter
