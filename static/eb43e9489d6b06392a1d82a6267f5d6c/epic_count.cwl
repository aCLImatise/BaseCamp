class: CommandLineTool
id: epic_count.cwl
inputs:
- id: in_files
  doc: ChIP files to count reads in (bed/bedpe format).
  type: string[]
  inputBinding:
    prefix: --infiles
- id: number_cores
  doc: 'Number of cpus to use. Can use at most one per chromosome. Default: 1.'
  type: string
  inputBinding:
    prefix: --number-cores
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
- id: fragment_size
  doc: (Single end reads only) Size of the sequenced fragment. The center of the the
    fragment will be taken as half the fragment size. Default 150.
  type: string
  inputBinding:
    prefix: --fragment-size
- id: genome
  doc: 'Which genome to analyze. Default: hg19. If --chromsizes flag is given, --genome
    is not required.'
  type: string
  inputBinding:
    prefix: --genome
- id: chrom_sizes
  doc: 'Set the chromosome lengths yourself in a file with two columns: chromosome
    names and sizes. Useful to analyze custom genomes, assemblies or simulated data.
    Only chromosomes included in the file will be analyzed.'
  type: string
  inputBinding:
    prefix: --chromsizes
- id: outfile
  doc: File to write gzipped count matrix to.
  type: string
  inputBinding:
    prefix: --outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- epic-count
