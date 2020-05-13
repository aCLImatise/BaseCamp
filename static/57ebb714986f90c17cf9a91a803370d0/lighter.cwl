class: CommandLineTool
id: lighter.cwl
inputs:
- id: r
  doc: ": seq_file is the path to the sequence file. Can use multiple -r to specifiy\
    \ multiple sequence files The file can be fasta and fastq, and can be gzip'ed\
    \ with extension *.gz. When the input file is *.gz, the corresponding output file\
    \ will also be gzip'ed."
  type: string
  inputBinding:
    prefix: -r
- id: k
  doc: 'genome_size alpha: (see README for information on setting alpha) or'
  type: string
  inputBinding:
    prefix: -k
- id: k
  doc: 'genom_size: in this case, the genome size should be relative accurate.'
  type: string
  inputBinding:
    prefix: -K
- id: od
  doc: ': (default: ./)'
  type: string
  inputBinding:
    prefix: -od
- id: t
  doc: ': number of threads to use (default: 1)'
  type: string
  inputBinding:
    prefix: -t
- id: max_cor
  doc: ': the maximum number of corrections within a 20bp window (default: 4)'
  type: long
  inputBinding:
    prefix: -maxcor
- id: trim
  doc: ': allow trimming (default: false)'
  type: boolean
  inputBinding:
    prefix: -trim
- id: discard
  doc: ': discard unfixable reads. Will LOSE paired-end matching when discarding (default:
    false)'
  type: boolean
  inputBinding:
    prefix: -discard
- id: no_qual
  doc: ': ignore the quality socre (default: false)'
  type: boolean
  inputBinding:
    prefix: -noQual
- id: new_qual
  doc: ': set the quality for the bases corrected to the specified score (default:
    not used)'
  type: string
  inputBinding:
    prefix: -newQual
- id: save_trusted_km_ers
  doc: ': save the trusted kmers to specified file then stop (default: not used)'
  type: File
  inputBinding:
    prefix: -saveTrustedKmers
- id: load_trusted_km_ers
  doc: ': directly get solid kmers from specified file (default: not used)'
  type: File
  inputBinding:
    prefix: -loadTrustedKmers
- id: zlib
  doc: ': set the compression level(0-9) of gzip (default: 1)'
  type: string
  inputBinding:
    prefix: -zlib
- id: v
  doc: ': print the version information and quit'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- lighter
