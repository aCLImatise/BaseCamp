class: CommandLineTool
id: epic.cwl
inputs:
- id: in_treatment
  doc: "Treatment (pull-down) file(s) in (b/gzipped) bed/bedpe\nformat."
  type: string[]
  inputBinding:
    prefix: --treatment
- id: in_control
  doc: "Control (input) file(s) in (b/gzipped) bed/bedpe\nformat."
  type: string[]
  inputBinding:
    prefix: --control
- id: in_number_cores
  doc: "Number of cpus to use. Can use at most one per\nchromosome. Default: 1."
  type: long?
  inputBinding:
    prefix: --number-cores
- id: in_genome
  doc: "Which genome to analyze. Default: hg19. If\n--chromsizes flag is given, --genome\
    \ is not required."
  type: long?
  inputBinding:
    prefix: --genome
- id: in_keep_duplicates
  doc: "Keep reads mapping to the same position on the same\nstrand within a library.\
    \ Default is to remove all but\nthe first duplicate."
  type: boolean?
  inputBinding:
    prefix: --keep-duplicates
- id: in_window_size
  doc: "Size of the windows to scan the genome. WINDOW_SIZE is\nthe smallest possible\
    \ island. Default 200."
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_gaps_allowed
  doc: "This number is multiplied by the window size to\ndetermine the gap size. Must\
    \ be an integer. Default:\n3."
  type: long?
  inputBinding:
    prefix: --gaps-allowed
- id: in_fragment_size
  doc: "(Single end reads only) Size of the sequenced\nfragment. The center of the\
    \ the fragment will be taken\nas half the fragment size. Default 150."
  type: long?
  inputBinding:
    prefix: --fragment-size
- id: in_false_discovery_rate_cut_off
  doc: "Remove all islands with an FDR below cutoff. Default\n0.05."
  type: double?
  inputBinding:
    prefix: --false-discovery-rate-cutoff
- id: in_effective_genome_fraction
  doc: "Use a different effective genome fraction than the one\nincluded in epic.\
    \ The default value depends on the\ngenome and readlength, but is a number between\
    \ 0 and\n1."
  type: long?
  inputBinding:
    prefix: --effective-genome-fraction
- id: in_chrom_sizes
  doc: "Set the chromosome lengths yourself in a file with two\ncolumns: chromosome\
    \ names and sizes. Useful to analyze\ncustom genomes, assemblies or simulated\
    \ data. Only\nchromosomes included in the file will be analyzed."
  type: File?
  inputBinding:
    prefix: --chromsizes
- id: in_store_matrix
  doc: "Store the matrix of counts per bin for ChIP and input\nto gzipped file <STORE_MATRIX>."
  type: File?
  inputBinding:
    prefix: --store-matrix
- id: in_bigwig
  doc: "For each file, store a bigwig of both enriched and\nnon-enriched regions to\
    \ folder <BIGWIG>. Requires\ndifferent basenames for each file."
  type: File?
  inputBinding:
    prefix: --bigwig
- id: in_individual_log_two_fc_bigwigs
  doc: "For each file, store a bigwig of the log2fc of\nChIP/(Sum Input) to folder\
    \ <INDIVIDUAL-LOG2FC-\nBIGWIGS>. Requires different basenames for each file."
  type: long?
  inputBinding:
    prefix: --individual-log2fc-bigwigs
- id: in_chip_bigwig
  doc: "Store an RPKM-normalized summed bigwig for all ChIP\nfiles in file <CHIP-BIGWIG>."
  type: File?
  inputBinding:
    prefix: --chip-bigwig
- id: in_input_bigwig
  doc: "Store an RPKM-normalized summed bigwig for all Input\nfiles in file <INPUT-BIGWIG>."
  type: File?
  inputBinding:
    prefix: --input-bigwig
- id: in_log_two_fc_bigwig
  doc: "Store an log2(ChIP/Input) bigwig in file <LOG2FC-\nBIGWIG>. (Both ChIP and\
    \ Input are RPKM-normalized\nbefore dividing.)"
  type: long?
  inputBinding:
    prefix: --log2fc-bigwig
- id: in_bed
  doc: "A summary bed file of all regions for display in the\nUCSC genome browser\
    \ or downstream analyses with e.g.\nbedtools. The score field is log2(#ChIP/#Input)\
    \ * 100\ncapped at a 1000."
  type: File?
  inputBinding:
    prefix: --bed
- id: in_log
  doc: File to write log messages to.
  type: File?
  inputBinding:
    prefix: --log
- id: in_outfile
  doc: File to write results to. By default sent to stdout.
  type: File?
  inputBinding:
    prefix: --outfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- epic
