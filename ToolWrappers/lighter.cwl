class: CommandLineTool
id: lighter.cwl
inputs:
- id: in_seqfile_path_sequence
  doc: ": seq_file is the path to the sequence file. Can use multiple -r to specifiy\
    \ multiple sequence files\nThe file can be fasta and fastq, and can be gzip'ed\
    \ with extension *.gz.\nWhen the input file is *.gz, the corresponding output\
    \ file will also be gzip'ed."
  type: File
  inputBinding:
    prefix: -r
- id: in_genomesize_alpha_see
  doc: 'genome_size alpha: (see README for information on setting alpha)'
  type: long
  inputBinding:
    prefix: -k
- id: in_number_use_default
  doc: ': number of threads to use (default: 1)'
  type: long
  inputBinding:
    prefix: -t
- id: in_max_cor
  doc: ': the maximum number of corrections within a 20bp window (default: 4)'
  type: long
  inputBinding:
    prefix: -maxcor
- id: in_trim
  doc: ': allow trimming (default: false)'
  type: boolean
  inputBinding:
    prefix: -trim
- id: in_discard
  doc: ': discard unfixable reads. Will LOSE paired-end matching when discarding (default:
    false)'
  type: boolean
  inputBinding:
    prefix: -discard
- id: in_no_qual
  doc: ': ignore the quality socre (default: false)'
  type: boolean
  inputBinding:
    prefix: -noQual
- id: in_new_qual
  doc: ': set the quality for the bases corrected to the specified score (default:
    not used)'
  type: string
  inputBinding:
    prefix: -newQual
- id: in_save_trusted_km_ers
  doc: ': save the trusted kmers to specified file then stop (default: not used)'
  type: File
  inputBinding:
    prefix: -saveTrustedKmers
- id: in_load_trusted_km_ers
  doc: ': directly get solid kmers from specified file (default: not used)'
  type: File
  inputBinding:
    prefix: -loadTrustedKmers
- id: in_zlib
  doc: ': set the compression level(0-9) of gzip (default: 1)'
  type: long
  inputBinding:
    prefix: -zlib
- id: in_print_version_information
  doc: ': print the version information and quit'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_or
  doc: '-K kmer_length genom_size: in this case, the genome size should be relative
    accurate.'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lighter
