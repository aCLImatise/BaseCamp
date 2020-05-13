class: CommandLineTool
id: gappa_examine_edpl.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: j_place_path
  doc: :PATH(existing)=[] ... REQUIRED List of jplace files or directories to process.
    For directories, only files with the extension .jplace are processed.
  type: string
  inputBinding:
    prefix: --jplace-path
- id: histogram_bins
  doc: =25    Number of histogram bins for binning the EDPL values.
  type: string
  inputBinding:
    prefix: --histogram-bins
- id: histogram_max
  doc: =-1    Maximum value to use in the histogram for binning the EDPL values. To
    use the maximal EDPL found in the samples, use a negative value (default).
  type: double
  inputBinding:
    prefix: --histogram-max
- id: no_list_file
  doc: If set, do not write out the EDPL per pquery, but just the histogram file.
    As the list needs to keep all pquery names in memory (to get the correct order),
    the memory requirements might be too large. In that case, this option can help.
  type: boolean
  inputBinding:
    prefix: --no-list-file
- id: out_dir
  doc: =.            Directory to write files to
  type: string
  inputBinding:
    prefix: --out-dir
- id: file_prefix
  doc: =edpl_    File prefix for output files
  type: string
  inputBinding:
    prefix: --file-prefix
- id: allow_file_overwriting
  doc: Allow to overwrite existing output files instead of aborting the command.
  type: boolean
  inputBinding:
    prefix: --allow-file-overwriting
- id: verbose
  doc: Produce more verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: threads
  doc: =8            Number of threads to use for calculations.
  type: string
  inputBinding:
    prefix: --threads
- id: log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: string
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- gappa
- examine
- edpl
