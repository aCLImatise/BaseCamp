class: CommandLineTool
id: ../../../cmetindex.cwl
inputs:
- id: source_dir
  doc: Directory where to read cmet index files (default is GMAP genome directory
    specified at compile time)
  type: Directory
  inputBinding:
    prefix: --sourcedir
- id: destdir
  doc: Directory where to write cmet index files (default is value of -F, if provided;
    otherwise the value of the GMAP genome directory specified at compile time)
  type: Directory
  inputBinding:
    prefix: --destdir
- id: db
  doc: Genome database
  type: string
  inputBinding:
    prefix: --db
- id: km_er
  doc: 'kmer size to use in genome database (allowed values: 16 or less). If not specified,
    the program will find the highest available kmer size in the genome database'
  type: long
  inputBinding:
    prefix: --kmer
- id: sampling
  doc: Sampling to use in genome database.  If not specified, the program will find
    the smallest available sampling value in the genome database within selected basesize
    and k-mer size
  type: long
  inputBinding:
    prefix: --sampling
- id: use_snps
  doc: Use database containing known SNPs (in <STRING>.iit, built previously using
    snpindex) for tolerance to SNPs
  type: string
  inputBinding:
    prefix: --use-snps
- id: options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cmetindex
