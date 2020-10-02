class: CommandLineTool
id: epic_blacklist.cwl
inputs:
- id: in_in_files
  doc: ChIP files to count reads in (bed/bedpe format).
  type: string[]
  inputBinding:
    prefix: --infiles
- id: in_number_cores
  doc: "Number of cpus to use. Can use at most one per\nchromosome. Default: 1."
  type: long
  inputBinding:
    prefix: --number-cores
- id: in_keep_duplicates
  doc: "Keep reads mapping to the same position on the same\nstrand within a library.\
    \ Default is to remove all but\nthe first duplicate."
  type: boolean
  inputBinding:
    prefix: --keep-duplicates
- id: in_window_size
  doc: "Size of the windows to scan the genome. WINDOW_SIZE is\nthe smallest possible\
    \ island. Default 200."
  type: long
  inputBinding:
    prefix: --window-size
- id: in_fragment_size
  doc: "(Single end reads only) Size of the sequenced\nfragment. The center of the\
    \ the fragment will be taken\nas half the fragment size. Default 150."
  type: long
  inputBinding:
    prefix: --fragment-size
- id: in_genome
  doc: "Which genome to analyze. Default: hg19. If\n--chromsizes flag is given, --genome\
    \ is not required."
  type: long
  inputBinding:
    prefix: --genome
- id: in_chrom_sizes
  doc: "Set the chromosome lengths yourself in a file with two\ncolumns: chromosome\
    \ names and sizes. Useful to analyze\ncustom genomes, assemblies or simulated\
    \ data. Only\nchromosomes included in the file will be analyzed."
  type: File
  inputBinding:
    prefix: --chromsizes
- id: in_bonferroni
  doc: "The bonferroni-value to consider a bin having too many\nreads in it (Default:\
    \ 0.05)."
  type: double
  inputBinding:
    prefix: --bonferroni
- id: in_effective_genome_fraction
  doc: "Use a different effective genome fraction than the one\nincluded in epic.\
    \ The default value depends on the\ngenome and readlength, but is a number between\
    \ 0 and\n1."
  type: long
  inputBinding:
    prefix: --effective-genome-fraction
- id: in_outfile
  doc: "File to write gzipped count matrix to.\n"
  type: File
  inputBinding:
    prefix: --outfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- epic-blacklist
