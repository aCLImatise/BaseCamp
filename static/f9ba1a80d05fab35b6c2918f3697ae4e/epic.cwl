class: CommandLineTool
id: ../../../epic.cwl
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
  doc: 'Which genome to analyze. Default: hg19. If --chromsizes flag is given, --genome
    is not required.'
  type: string
  inputBinding:
    prefix: --genome
- id: keep_duplicates
  doc: Keep reads mapping to the same position on the same strand within a library.
    Default is to remove all but the first duplicate.
  type: boolean
  inputBinding:
    prefix: --keep-duplicates
- id: window_size
  doc: Size of the windows to scan the genome. WINDOW_SIZE is the smallest possible
    island. Default 200.
  type: string
  inputBinding:
    prefix: --window-size
- id: gaps_allowed
  doc: 'This number is multiplied by the window size to determine the gap size. Must
    be an integer. Default: 3.'
  type: string
  inputBinding:
    prefix: --gaps-allowed
- id: fragment_size
  doc: (Single end reads only) Size of the sequenced fragment. The center of the the
    fragment will be taken as half the fragment size. Default 150.
  type: string
  inputBinding:
    prefix: --fragment-size
- id: false_discovery_rate_cut_off
  doc: Remove all islands with an FDR below cutoff. Default 0.05.
  type: string
  inputBinding:
    prefix: --false-discovery-rate-cutoff
- id: effective_genome_fraction
  doc: Use a different effective genome fraction than the one included in epic. The
    default value depends on the genome and readlength, but is a number between 0
    and 1.
  type: string
  inputBinding:
    prefix: --effective-genome-fraction
- id: chrom_sizes
  doc: 'Set the chromosome lengths yourself in a file with two columns: chromosome
    names and sizes. Useful to analyze custom genomes, assemblies or simulated data.
    Only chromosomes included in the file will be analyzed.'
  type: string
  inputBinding:
    prefix: --chromsizes
- id: store_matrix
  doc: Store the matrix of counts per bin for ChIP and input to gzipped file <STORE_MATRIX>.
  type: string
  inputBinding:
    prefix: --store-matrix
- id: bigwig
  doc: For each file, store a bigwig of both enriched and non-enriched regions to
    folder <BIGWIG>. Requires different basenames for each file.
  type: string
  inputBinding:
    prefix: --bigwig
- id: individual_log_two_fc_bigwigs
  doc: For each file, store a bigwig of the log2fc of ChIP/(Sum Input) to folder <INDIVIDUAL-LOG2FC-
    BIGWIGS>. Requires different basenames for each file.
  type: string
  inputBinding:
    prefix: --individual-log2fc-bigwigs
- id: chip_bigwig
  doc: Store an RPKM-normalized summed bigwig for all ChIP files in file <CHIP-BIGWIG>.
  type: string
  inputBinding:
    prefix: --chip-bigwig
- id: input_bigwig
  doc: Store an RPKM-normalized summed bigwig for all Input files in file <INPUT-BIGWIG>.
  type: string
  inputBinding:
    prefix: --input-bigwig
- id: log_two_fc_bigwig
  doc: Store an log2(ChIP/Input) bigwig in file <LOG2FC- BIGWIG>. (Both ChIP and Input
    are RPKM-normalized before dividing.)
  type: string
  inputBinding:
    prefix: --log2fc-bigwig
- id: bed
  doc: A summary bed file of all regions for display in the UCSC genome browser or
    downstream analyses with e.g. bedtools. The score field is log2(#ChIP/#Input)
    * 100 capped at a 1000.
  type: string
  inputBinding:
    prefix: --bed
- id: log
  doc: File to write log messages to.
  type: string
  inputBinding:
    prefix: --log
- id: outfile
  doc: File to write results to. By default sent to stdout.
  type: string
  inputBinding:
    prefix: --outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- epic
