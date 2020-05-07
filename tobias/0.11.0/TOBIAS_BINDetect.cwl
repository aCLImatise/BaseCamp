class: CommandLineTool
id: TOBIAS_BINDetect.cwl
inputs:
- id: signals
  doc: '[<bigwig> [<bigwig> ...]] Signal per condition (.bigwig format)'
  type: boolean
  inputBinding:
    prefix: --signals
- id: peaks
  doc: Peaks.bed containing open chromatin regions across all conditions
  type: string
  inputBinding:
    prefix: --peaks
- id: motifs
  doc: '[<motifs> [<motifs> ...]] Motif file(s) in pfm/jaspar/meme format'
  type: boolean
  inputBinding:
    prefix: --motifs
- id: genome
  doc: Genome .fasta file
  type: string
  inputBinding:
    prefix: --genome
- id: cond_names
  doc: '[<name> [<name> ...]] Names of conditions fitting to --signals (default: prefix
    of --signals)'
  type: boolean
  inputBinding:
    prefix: --cond-names
- id: peak_header
  doc: 'File containing the header of --peaks separated by whitespace or newlines
    (default: peak columns are named "_additional_<count>")'
  type: File
  inputBinding:
    prefix: --peak-header
- id: naming
  doc: "Naming convention for TF output files ('id', 'name', 'name_id', 'id_name')\
    \ (default: 'name_id')"
  type: string
  inputBinding:
    prefix: --naming
- id: motif_p_value
  doc: 'Set p-value threshold for motif scanning (default: 1e-4)'
  type: double
  inputBinding:
    prefix: --motif-pvalue
- id: bound_p_value
  doc: 'Set p-value threshold for bound/unbound split (default: 0.001)'
  type: double
  inputBinding:
    prefix: --bound-pvalue
- id: pseudo
  doc: 'Pseudocount for calculating log2fcs (default: estimated from data)'
  type: double
  inputBinding:
    prefix: --pseudo
- id: time_series
  doc: Will only compare signals1<->signals2<->signals3 (...) in order of input, and
    skip all-against-all comparison.
  type: boolean
  inputBinding:
    prefix: --time-series
- id: skip_excel
  doc: Skip creation of excel files - for large datasets, this will speed up BINDetect
    considerably
  type: boolean
  inputBinding:
    prefix: --skip-excel
- id: prefix
  doc: 'Prefix for overview files in --outdir folder (default: bindetect)'
  type: string
  inputBinding:
    prefix: --prefix
- id: outdir
  doc: 'Output directory to place TFBS/plots in (default: bindetect_output)'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: cores
  doc: 'Number of cores to use for computation (default: 1)'
  type: long
  inputBinding:
    prefix: --cores
- id: split
  doc: 'Split of multiprocessing jobs (default: 100)'
  type: long
  inputBinding:
    prefix: --split
- id: verbosity
  doc: 'Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats,
    4: debug, 5: spam) (default: 3)'
  type: long
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- BINDetect
