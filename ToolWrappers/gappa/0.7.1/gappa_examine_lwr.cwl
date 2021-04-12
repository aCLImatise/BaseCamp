class: CommandLineTool
id: gappa_examine_lwr.cwl
inputs:
- id: in_j_place_path
  doc: ":PATH(existing)=[] ... REQUIRED\nList of jplace files or directories to process.\
    \ For directories, only files with the extension `.jplace[.gz]` are processed."
  type: File?
  inputBinding:
    prefix: --jplace-path
- id: in_ignore_multiplicities
  doc: Set the multiplicity of each pquery to 1.
  type: boolean?
  inputBinding:
    prefix: --ignore-multiplicities
- id: in_histogram_bins
  doc: =25    Number of histogram bins for binning the LWR values.
  type: long?
  inputBinding:
    prefix: --histogram-bins
- id: in_num_lwrs
  doc: =5           Number of histograms to print. That is, how many of the LWRs per
    pquery to output (most likely, second most likely, etc), or in other words, how
    many LWRs columns the output table should have.
  type: long?
  inputBinding:
    prefix: --num-lwrs
- id: in_no_list_file
  doc: If set, do not write out the LWRs per pquery, but just the histogram file.
    As the list needs to keep all pquery names in memory (to get the correct order),
    the memory requirements might be too large. In that case, this option can help.
  type: File?
  inputBinding:
    prefix: --no-list-file
- id: in_no_compat_check
  doc: If set, disables the check for tree compatibility. Useful if comparing results
    across differing reference trees.
  type: boolean?
  inputBinding:
    prefix: --no-compat-check
- id: in_out_dir
  doc: =.            Directory to write files to
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_file_prefix
  doc: File prefix for output files
  type: File?
  inputBinding:
    prefix: --file-prefix
- id: in_file_suffix
  doc: File suffix for output files
  type: File?
  inputBinding:
    prefix: --file-suffix
- id: in_allow_file_overwriting
  doc: Allow to overwrite existing output files instead of aborting the command.
  type: boolean?
  inputBinding:
    prefix: --allow-file-overwriting
- id: in_verbose
  doc: Produce more verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: =1            Number of threads to use for calculations.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: File?
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_list_file
  doc: If set, do not write out the LWRs per pquery, but just the histogram file.
    As the list needs to keep all pquery names in memory (to get the correct order),
    the memory requirements might be too large. In that case, this option can help.
  type: File?
  outputBinding:
    glob: $(inputs.in_no_list_file)
- id: out_file_prefix
  doc: File prefix for output files
  type: File?
  outputBinding:
    glob: $(inputs.in_file_prefix)
- id: out_file_suffix
  doc: File suffix for output files
  type: File?
  outputBinding:
    glob: $(inputs.in_file_suffix)
- id: out_log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gappa:0.7.1--he513fc3_0
cwlVersion: v1.1
baseCommand:
- gappa
- examine
- lwr
