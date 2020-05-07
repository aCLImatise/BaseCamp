class: CommandLineTool
id: epic.cwl
inputs:
- id: treatment
  doc: Treatment (pull-down) file(s) in (b/gzipped) bed/bedpe format.
  type: string[]
  inputBinding:
    prefix: --treatment
- id: control
  doc: Control (input) file(s) in (b/gzipped) bed/bedpe format.
  type: string[]
  inputBinding:
    prefix: --control
- id: number_cores
  doc: 'Number of cpus to use. Can use at most one per chromosome. Default: 1.'
  type: string
  inputBinding:
    prefix: --number-cores
- id: genome
  doc: 'Which genome to analyze. Default: hg19.'
  type: string
  inputBinding:
    prefix: --genome
- id: keep_duplicates
  doc: Keep reads mapping to the same position on the same strand within a library.
    Default is to remove all but the first duplicate.
  type: string
  inputBinding:
    prefix: --keep-duplicates
- id: window_size
  doc: Size of the windows to scan the genome. WINDOW_SIZE is the smallest possible
    island. Default 200.
  type: string
  inputBinding:
    prefix: --window-size
- id: gaps_allowed
  doc: 'Multiple of window size used to determine the gap size. Must be an integer.
    Default: 3.'
  type: string
  inputBinding:
    prefix: --gaps-allowed
- id: fragment_size
  doc: Size of the sequenced fragment. The center of the the fragment will be taken
    as half the fragment size. Default 150.
  type: string
  inputBinding:
    prefix: --fragment-size
- id: false_discovery_rate_cut_off
  doc: Remove all islands with an FDR below cutoff. Default 1.0 (i.e. all found islands
    included no matter how bad the adjusted p-value.).
  type: string
  inputBinding:
    prefix: --false-discovery-rate-cutoff
- id: effective_genome_length
  doc: Use a different effective genome size than the one included in epic. The default
    value depends on the genome and readlength.
  type: string
  inputBinding:
    prefix: --effective_genome_length
- id: store_matrix
  doc: Store the matrix of counts per bin for ChIP and input to gzipped file <STORE_MATRIX>.
  type: string
  inputBinding:
    prefix: --store-matrix
- id: paired_end
  doc: Use paired end data (bedpe).
  type: boolean
  inputBinding:
    prefix: --paired-end
outputs: []
cwlVersion: v1.1
baseCommand:
- epic
