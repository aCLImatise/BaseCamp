class: CommandLineTool
id: FileMerger.cwl
inputs:
- id: in
  doc: "*                  Input files separated by blank (valid formats: 'mzData',\
    \ 'mzXML', 'mzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML', 'fid',\
    \ 'traML', 'fasta')"
  type: File
  inputBinding:
    prefix: -in
- id: in_type
  doc: "Input file type (default: determined from file extension or content) (valid:\
    \ 'mzData', 'mzXML', 'mzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML',\
    \ 'fid', 'traML', 'fast a')"
  type: string
  inputBinding:
    prefix: -in_type
- id: out
  doc: "*                  Output file (valid formats: 'mzML', 'featureXML', 'consensusXML',\
    \ 'traML', 'fasta')"
  type: File
  inputBinding:
    prefix: -out
- id: annotate_file_origin
  doc: Store the original filename in each feature using meta value "file_origin"
    (for featureXML and consensusXML only).
  type: boolean
  inputBinding:
    prefix: -annotate_file_origin
- id: append_method
  doc: "Append consensusMaps rowise or colwise. (Please use colwise for the MSstatsConverter)\
    \ (default: 'append_rows' valid: 'append_rows', 'append_cols')"
  type: string
  inputBinding:
    prefix: -append_method
- id: rt_concat
  doc: ":gap <sec>          The amount of gap (in seconds) to insert between the RT\
    \ ranges of different input files. RT concatenation is enabled if a value > 0\
    \ is set. (default: '0.0')"
  type: boolean
  inputBinding:
    prefix: -rt_concat
- id: rt_concat
  doc: ":trafo_out <files>  Output of retention time transformations that were applied\
    \ to the input files to produce non-overlapping RT ranges. If used, one output\
    \ file per input file is required. (valid  formats: 'trafoXML')"
  type: boolean
  inputBinding:
    prefix: -rt_concat
- id: raw
  doc: :rt_auto                  Assign retention times automatically (integers starting
    at 1)
  type: boolean
  inputBinding:
    prefix: -raw
- id: raw
  doc: :rt_custom <rts>          List of custom retention times that are assigned
    to the files. The number of given retention times must be equal to the number
    of input files.
  type: boolean
  inputBinding:
    prefix: -raw
- id: raw
  doc: :rt_filename              Try to guess the retention time of a file based on
    the filename. This option is useful for merging DTA files, where filenames should
    contain the string 'rt' directly followed by  a floating point number, e.g. 'my_spectrum_rt2795.15.dta'
  type: boolean
  inputBinding:
    prefix: -raw
- id: raw
  doc: ":ms_level <num>           If 1 or higher, this number is assigned to spectra\
    \ as the MS level. This option is useful for DTA files which do not contain MS\
    \ level information. (default: '0')"
  type: boolean
  inputBinding:
    prefix: -raw
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
- FileMerger
