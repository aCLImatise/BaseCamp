#!/usr/bin/env cwl-runner

baseCommand:
- MzMLSplitter
class: CommandLineTool
cwlVersion: v1.0
id: mzmlsplitter
inputs:
- doc: "*        Input file (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Prefix for output files ('_part1of2.mzML' etc. will be appended; default:\
    \ same as 'in' without the file extension)"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Number of parts to split into (takes precedence over 'size' if set) (default:\
    \ '1' min: '1')"
  id: parts
  inputBinding:
    prefix: -parts
  type: string
- doc: "Approximate upper limit for resulting file sizes (in 'unit') (default: '0'\
    \ min: '0')"
  id: size
  inputBinding:
    prefix: -size
  type: string
- doc: "Unit for 'size' (base 1024) (default: 'MB' valid: 'KB', 'MB', 'GB')"
  id: unit
  inputBinding:
    prefix: -unit
  type: string
- doc: Remove chromatograms, keep only spectra.
  id: no_chrom
  inputBinding:
    prefix: -no_chrom
  type: boolean
- doc: Remove spectra, keep only chromatograms.
  id: no_spec
  inputBinding:
    prefix: -no_spec
  type: boolean
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
