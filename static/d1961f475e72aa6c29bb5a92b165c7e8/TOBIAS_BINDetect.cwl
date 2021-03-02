class: CommandLineTool
id: TOBIAS_BINDetect.cwl
inputs:
- id: in_signals
  doc: "[<bigwig> [<bigwig> ...]]\nSignal per condition (.bigwig format)"
  type: boolean?
  inputBinding:
    prefix: --signals
- id: in_peaks
  doc: Peaks.bed containing open chromatin regions across all
  type: string?
  inputBinding:
    prefix: --peaks
- id: in_genome
  doc: Genome .fasta file
  type: File?
  inputBinding:
    prefix: --genome
- id: in_cond_names
  doc: "[<name> [<name> ...]]\nNames of conditions fitting to --signals (default:\n\
    prefix of --signals)"
  type: boolean?
  inputBinding:
    prefix: --cond-names
- id: in_peak_header
  doc: "File containing the header of --peaks separated by\nwhitespace or newlines\
    \ (default: peak columns are named\n\"_additional_<count>\")"
  type: File?
  inputBinding:
    prefix: --peak-header
- id: in_naming
  doc: "Naming convention for TF output files ('id', 'name',\n'name_id', 'id_name')\
    \ (default: 'name_id')"
  type: string?
  inputBinding:
    prefix: --naming
- id: in_motif_p_value
  doc: "Set p-value threshold for motif scanning (default:\n1e-4)"
  type: double?
  inputBinding:
    prefix: --motif-pvalue
- id: in_bound_p_value
  doc: "Set p-value threshold for bound/unbound split (default:\n0.001)"
  type: double?
  inputBinding:
    prefix: --bound-pvalue
- id: in_pseudo
  doc: "Pseudocount for calculating log2fcs (default: estimated\nfrom data)"
  type: double?
  inputBinding:
    prefix: --pseudo
- id: in_time_series
  doc: "Will only compare signals1<->signals2<->signals3 (...)\nin order of input,\
    \ and skip all-against-all comparison."
  type: boolean?
  inputBinding:
    prefix: --time-series
- id: in_skip_excel
  doc: "Skip creation of excel files - for large datasets, this\nwill speed up BINDetect\
    \ considerably"
  type: boolean?
  inputBinding:
    prefix: --skip-excel
- id: in_prefix
  doc: "Prefix for overview files in --outdir folder (default:\nbindetect)"
  type: Directory?
  inputBinding:
    prefix: --prefix
- id: in_outdir
  doc: "Output directory to place TFBS/plots in (default:\nbindetect_output)"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_cores
  doc: 'Number of cores to use for computation (default: 1)'
  type: long?
  inputBinding:
    prefix: --cores
- id: in_split
  doc: 'Split of multiprocessing jobs (default: 100)'
  type: long?
  inputBinding:
    prefix: --split
- id: in_verbosity
  doc: "Level of output logging (0: silent, 1: errors/warnings,\n2: info, 3: stats,\
    \ 4: debug, 5: spam) (default: 3)\n"
  type: long?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Output directory to place TFBS/plots in (default:\nbindetect_output)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- BINDetect
