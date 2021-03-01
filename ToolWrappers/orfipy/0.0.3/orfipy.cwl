class: CommandLineTool
id: orfipy.cwl
inputs:
- id: in_procs
  doc: Num processor cores to use Default:mp.cpu_count()
  type: long?
  inputBinding:
    prefix: --procs
- id: in_single_mode
  doc: "Run in single mode i.e. no parallel processing\n(SLOWER). If supplied with\
    \ procs, this is ignored.\nDefault: False"
  type: boolean?
  inputBinding:
    prefix: --single-mode
- id: in_table
  doc: "The codon table number to use or path to .json file\nwith codon table. Use\
    \ --show-tables to see available\ntables compiled from: https://www.ncbi.nlm.nih.gov/Tax\n\
    onomy/Utils/wprintgc.cgi?chapter=cgencodes Default: 1"
  type: long?
  inputBinding:
    prefix: --table
- id: in_start
  doc: "Comma-separated list of start-codons. This will\noverride start codons described\
    \ in translation table.\nE.g. \"--start ATG,ATT\" Default: Derived from the\n\
    translation table selected"
  type: string?
  inputBinding:
    prefix: --start
- id: in_stop
  doc: "Comma-separated list of stop codons. This will\noverride stop codons described\
    \ in translation table.\nE.g. \"--start TAG,TTT\" Default: Derived from the\n\
    translation table selected"
  type: string?
  inputBinding:
    prefix: --stop
- id: in_outdir
  doc: 'Path to outdir default: orfipy_<infasta>_out'
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_be_done_two
  doc: 'bed12 out file Default: None'
  type: File?
  inputBinding:
    prefix: --bed12
- id: in_bed
  doc: 'bed out file Default: None'
  type: File?
  inputBinding:
    prefix: --bed
- id: in_dna
  doc: 'fasta (DNA) out file Default: None'
  type: File?
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: 'fasta (RNA) out file Default: None'
  type: File?
  inputBinding:
    prefix: --rna
- id: in_pep
  doc: 'fasta (peptide) out file Default: None'
  type: File?
  inputBinding:
    prefix: --pep
- id: in_min
  doc: "Minimum length of ORF, excluding stop codon\n(nucleotide) Default: 30"
  type: long?
  inputBinding:
    prefix: --min
- id: in_max
  doc: "Maximum length of ORF, excluding stop codon\n(nucleotide) Default: 1,000,000,000"
  type: long?
  inputBinding:
    prefix: --max
- id: in_strand
  doc: "Strands to find ORFs [(f)orward,(r)everse,(b)oth]\nDefault: b"
  type: string?
  inputBinding:
    prefix: --strand
- id: in_partial_three
  doc: "Output ORFs with a start codon but lacking an inframe\nstop codon. E.g. \"\
    ATG TTT AAA\" Default: False"
  type: boolean?
  inputBinding:
    prefix: --partial-3
- id: in_partial_five
  doc: "Output ORFs with an inframe stop codon lacking an\ninframe start codon. E.g.\
    \ \"TTT AAA TAG\" Default: False"
  type: boolean?
  inputBinding:
    prefix: --partial-5
- id: in_between_stops
  doc: "Output ORFs defined as regions between stop codons\n(regions free of stop\
    \ codon). This will set\n--partial-3 and --partial-5 true. Default: False"
  type: boolean?
  inputBinding:
    prefix: --between-stops
- id: in_include_stop
  doc: "Include stop codon in the results, if a stop codon\nexists. This output format\
    \ is compatible with\nTransDecoder's which includes stop codon coordinates\nDefault:\
    \ False"
  type: boolean?
  inputBinding:
    prefix: --include-stop
- id: in_longest
  doc: "Output a separate BED file for longest ORFs per\nsequence. Requires bed option.\
    \ Default: False"
  type: File?
  inputBinding:
    prefix: --longest
- id: in_by_frame
  doc: "Output separate BED files for ORFs by frame. Can be\ncombined with \"--longest\"\
    \ to output longest ORFs in\neach frame. Requires bed option. Default: False"
  type: boolean?
  inputBinding:
    prefix: --by-frame
- id: in_chunk_size
  doc: "Max chunk size in MB. This is useful for limiting\nmemory usage when processing\
    \ large fasta files using\nmultiple processes The files are processed in chunks\n\
    if file size is greater than chunk-size. By default\norfipy computes the chunk\
    \ size based on available\nmemory and cpu cores. Providing a smaller chunk-size\n\
    will lower the memory usage but, actual memory used by\norfipy can be more than\
    \ the chunk-size. Providing a\nvery high chunk-size can lead to memory issues\
    \ for\nlarger sequences such as large chromosomes. It is best\nto let orfipy decide\
    \ on the chunk-size. Default:\nestimated by orfipy based on system memory and\
    \ cpu"
  type: long?
  inputBinding:
    prefix: --chunk-size
- id: in_show_tables
  doc: 'Print translation tables and exit. Default: False'
  type: boolean?
  inputBinding:
    prefix: --show-tables
- id: in_in_file
  doc: "The input file, in plain Fasta/Fastq or gzipped\nformat, containing Nucletide\
    \ sequences"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_be_done_two
  doc: 'bed12 out file Default: None'
  type: File?
  outputBinding:
    glob: $(inputs.in_be_done_two)
- id: out_bed
  doc: 'bed out file Default: None'
  type: File?
  outputBinding:
    glob: $(inputs.in_bed)
- id: out_dna
  doc: 'fasta (DNA) out file Default: None'
  type: File?
  outputBinding:
    glob: $(inputs.in_dna)
- id: out_rna
  doc: 'fasta (RNA) out file Default: None'
  type: File?
  outputBinding:
    glob: $(inputs.in_rna)
- id: out_pep
  doc: 'fasta (peptide) out file Default: None'
  type: File?
  outputBinding:
    glob: $(inputs.in_pep)
- id: out_longest
  doc: "Output a separate BED file for longest ORFs per\nsequence. Requires bed option.\
    \ Default: False"
  type: File?
  outputBinding:
    glob: $(inputs.in_longest)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/orfipy:0.0.3--py37h9a982cc_0
cwlVersion: v1.1
baseCommand:
- orfipy
