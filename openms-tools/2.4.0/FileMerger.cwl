#!/usr/bin/env cwl-runner

baseCommand:
- FileMerger
class: CommandLineTool
cwlVersion: v1.0
id: filemerger
inputs:
- doc: "*                  Input files separated by blank (valid formats: 'mzData',\
    \ 'mzXML', 'mzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML', 'fid',\
    \ 'traML', 'FASTA')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Input file type (default: determined from file extension or content) (valid:\
    \ 'mzData', 'mzXML', 'mzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML',\
    \ 'fid', 'traML', 'FAST A')"
  id: in_type
  inputBinding:
    prefix: -in_type
  type: string
- doc: "*                  Output file (valid formats: 'mzML', 'featureXML', 'consensusXML',\
    \ 'traML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: Store the original filename in each feature using meta value "file_origin"
    (for featureXML and consensusXML only).
  id: annotate_file_origin
  inputBinding:
    prefix: -annotate_file_origin
  type: boolean
- doc: ":gap <sec>          The amount of gap (in seconds) to insert between the RT\
    \ ranges of different input files. RT concatenation is enabled if a value > 0\
    \ is set. (default: '0')"
  id: rt_concat
  inputBinding:
    prefix: -rt_concat
  type: boolean
- doc: ":trafo_out <files>  Output of retention time transformations that were applied\
    \ to the input files to produce non-overlapping RT ranges. If used, one output\
    \ file per input file is required. (valid  formats: 'trafoXML')"
  id: rt_concat
  inputBinding:
    prefix: -rt_concat
  type: boolean
- doc: :rt_auto                  Assign retention times automatically (integers starting
    at 1)
  id: raw
  inputBinding:
    prefix: -raw
  type: boolean
- doc: :rt_custom <rts>          List of custom retention times that are assigned
    to the files. The number of given retention times must be equal to the number
    of input files.
  id: raw
  inputBinding:
    prefix: -raw
  type: boolean
- doc: :rt_filename              Try to guess the retention time of a file based on
    the filename. This option is useful for merging DTA files, where filenames should
    contain the string 'rt' directly followed by  a floating point number, e.g. 'my_spectrum_rt2795.15.dta'
  id: raw
  inputBinding:
    prefix: -raw
  type: boolean
- doc: ":ms_level <num>           If 1 or higher, this number is assigned to spectra\
    \ as the MS level. This option is useful for DTA files which do not contain MS\
    \ level information. (default: '0')"
  id: raw
  inputBinding:
    prefix: -raw
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
