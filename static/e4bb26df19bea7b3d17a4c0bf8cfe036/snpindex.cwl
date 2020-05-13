class: CommandLineTool
id: snpindex.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: i_it_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: source_dir
  doc: Directory where to read genome index files (default is GMAP genome directory
    specified at compile time)
  type: Directory
  inputBinding:
    prefix: --sourcedir
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
    the smallest available sampling value in the genome database within selected k-mer
    size
  type: long
  inputBinding:
    prefix: --sampling
- id: destdir
  doc: Directory where to write SNP index files (default is GMAP genome directory
    specified at compile time)
  type: Directory
  inputBinding:
    prefix: --destdir
- id: snps_db
  doc: Name of SNP database
  type: string
  inputBinding:
    prefix: --snpsdb
- id: max_warnings
  doc: Maximum number of warnings to print to stderr about inconsistencies relative
    to the reference genome. A value of 0 turns off all warnings.  A negative value
    prints all warnings.  (default -1, meaning no limit)
  type: long
  inputBinding:
    prefix: --max-warnings
outputs: []
cwlVersion: v1.1
baseCommand:
- snpindex
