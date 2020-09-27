class: CommandLineTool
id: hicstuff_pipeline.cwl
inputs:
- id: in_aligner
  doc: "Alignment software to use. Can be either\nbowtie2, minimap2 or bwa. minimap2\
    \ should\nonly be used for reads > 100 bp.\n[default: bowtie2]"
  type: long
  inputBinding:
    prefix: --aligner
- id: in_centromeres
  doc: "Positions of the centromeres separated by\na space and in the same order than\
    \ the\nchromosomes. Discordant with the circular\noption."
  type: File
  inputBinding:
    prefix: --centromeres
- id: in_circular
  doc: "Enable if the genome is circular.\nDiscordant with the centromeres option."
  type: boolean
  inputBinding:
    prefix: --circular
- id: in_distance_law
  doc: "If enabled, generates a distance law file\nwith the values of the probabilities\
    \ to\nhave a contact between two distances for\neach chromosomes or arms if the\
    \ file with\nthe positions has been given. The values\nare not normalized, or\
    \ averaged."
  type: boolean
  inputBinding:
    prefix: --distance-law
- id: in_duplicates
  doc: Filter out PCR duplicates based on read
  type: boolean
  inputBinding:
    prefix: --duplicates
- id: in_filter
  doc: "Filter out spurious 3C events (loops and\nuncuts) using hicstuff filter. Requires\n\
    \"-e\" to be a restriction enzyme, not a\nchunk size. For more informations, see\n\
    Cournac et al. BMC Genomics, 2012."
  type: boolean
  inputBinding:
    prefix: --filter
- id: in_force
  doc: Write even if the output file already exists.
  type: File
  inputBinding:
    prefix: --force
- id: in_iterative
  doc: "Map reads iteratively using hicstuff\niteralign, by truncating reads to 20bp\n\
    and then repeatedly extending and\naligning them."
  type: boolean
  inputBinding:
    prefix: --iterative
- id: in_genome
  doc: "Reference genome to map against. Path to\nthe bowtie2/bwa index if using bowtie2/bwa,\n\
    or to a FASTA file if using minimap2."
  type: File
  inputBinding:
    prefix: --genome
- id: in_mat_fmt
  doc: "The format of the output sparse matrix.\nCan be \"bg2\" for 2D Bedgraph format,\n\
    \"cool\" for Mirnylab's cooler software, or\n\"graal\" for graal-compatible plain\
    \ text\nCOO format. [default: graal]"
  type: long
  inputBinding:
    prefix: --matfmt
- id: in_no_cleanup
  doc: "If enabled, intermediary BED files will\nbe kept after generating the contact\
    \ map.\nDisabled by defaut."
  type: boolean
  inputBinding:
    prefix: --no-cleanup
- id: in_outdir
  doc: Output directory. Defaults to the current
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_prefix
  doc: "Overrides default filenames and prefixes all\noutput files with a custom name."
  type: string
  inputBinding:
    prefix: --prefix
- id: in_quality_min
  doc: "Minimum mapping quality for selecting\ncontacts. [default: 30]."
  type: long
  inputBinding:
    prefix: --quality-min
- id: in_remove_centromeres
  doc: "Integer. Number of kb that will be remove around\nthe centromere position\
    \ given by in the centromere\nfile. [default: 0]"
  type: long
  inputBinding:
    prefix: --remove-centromeres
- id: in_read_len
  doc: "Maximum read length in the fastq file. Optionally\nused in iterative alignment\
    \ mode. Estimated from\nthe first read by default. Useful if input fastq\nis a\
    \ composite of different read lengths."
  type: long
  inputBinding:
    prefix: --read-len
- id: in_size
  doc: "Minimum size threshold to consider\ncontigs. Keep all contigs by default.\n\
    [default: 0]"
  type: long
  inputBinding:
    prefix: --size
- id: in_start_stage
  doc: "Define the starting point of the pipeline\nto skip some steps. Default is\
    \ \"fastq\" to\nrun from the start. Can also be \"bam\" to\nskip the alignment,\
    \ \"pairs\" to start from a\nsingle pairs file or \"pairs_idx\" to skip\nfragment\
    \ attribution and only build the\nmatrix. [default: fastq]"
  type: File
  inputBinding:
    prefix: --start-stage
- id: in_threads
  doc: "Number of threads to allocate.\n[default: 1]."
  type: long
  inputBinding:
    prefix: --threads
- id: in_tmpdir
  doc: "Directory for storing intermediary BED\nfiles and temporary sort files. Defaults\n\
    to the output directory."
  type: Directory
  inputBinding:
    prefix: --tmpdir
- id: in_p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p
- id: in_e
  doc: ''
  type: boolean
  inputBinding:
    prefix: -e
- id: in_positions_dot
  doc: -e, --enzyme=ENZ              Restriction enzyme if a string, or chunk
  type: string
  inputBinding:
    position: 0
- id: in_directory_dot
  doc: -p, --plot                    Generates plots in the output directory
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: Write even if the output file already exists.
  type: File
  outputBinding:
    glob: $(inputs.in_force)
- id: out_outdir
  doc: Output directory. Defaults to the current
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_tmpdir
  doc: "Directory for storing intermediary BED\nfiles and temporary sort files. Defaults\n\
    to the output directory."
  type: Directory
  outputBinding:
    glob: $(inputs.in_tmpdir)
cwlVersion: v1.1
baseCommand:
- hicstuff
- pipeline
