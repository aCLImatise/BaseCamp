class: CommandLineTool
id: GUESSmyLT.cwl
inputs:
- id: in_organism
  doc: "Mandatory when no annotation provided. What organism\nare you dealing with?\
    \ prokaryote or eukaryote."
  type: string
  inputBinding:
    prefix: --organism
- id: in_reads
  doc: "One or two read files in .fastq or .fastq.gz format.\nFiles can be compressed\
    \ or uncrompressed. Handles\ninterleaved read files and any known .fastq header\n\
    format."
  type: string[]
  inputBinding:
    prefix: --reads
- id: in_subsample
  doc: "Number of subsampled reads that will be used for\nanalysis. Must be an even\
    \ number."
  type: long
  inputBinding:
    prefix: --subsample
- id: in_reference
  doc: "Mandatory when --mapped used or when no reads provided\n(--reads). Reference\
    \ file in .fa/.fasta format.\nReference can be either transcriptome or genome."
  type: File
  inputBinding:
    prefix: --reference
- id: in_mode
  doc: "Mode can be genome or transcriptome (default genome).\nIt defines how the\
    \ reference fasta file will be\nhandled by BUSCO. This option is used when no\n\
    annotation is provided (--annotation)."
  type: File
  inputBinding:
    prefix: --mode
- id: in_annotation
  doc: "Annotation file in .gff format. Needs to contain\ngenes."
  type: File
  inputBinding:
    prefix: --annotation
- id: in_mapped
  doc: "Mapped file in .bam format (Will be sorted). Reference\nthat reads have been\
    \ mapped to has to be provided."
  type: File
  inputBinding:
    prefix: --mapped
- id: in_threads
  doc: "The number of threads that can be used by GUESSmyLT.\nNeeds to be an integer.\
    \ Defualt value is 2."
  type: long
  inputBinding:
    prefix: --threads
- id: in_memory
  doc: "Maximum memory that can be used by GUESSmyLT in GB.\nE.g. '10G'. Default value\
    \ is 8G."
  type: long
  inputBinding:
    prefix: --memory
- id: in_output
  doc: Full path to output directory. Default is working
  type: File
  inputBinding:
    prefix: --output
- id: in_directory_dot
  doc: -n                    (Snakemake dryrun option) Allows to see the scheduling
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Full path to output directory. Default is working
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- GUESSmyLT
