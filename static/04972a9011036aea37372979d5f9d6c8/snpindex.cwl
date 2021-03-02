class: CommandLineTool
id: snpindex.cwl
inputs:
- id: in_source_dir
  doc: "Directory where to read genome index files (default is\nGMAP genome directory\
    \ specified at compile time)"
  type: Directory?
  inputBinding:
    prefix: --sourcedir
- id: in_db
  doc: Genome database
  type: string?
  inputBinding:
    prefix: --db
- id: in_km_er
  doc: "kmer size to use in genome database (allowed values: 16 or less).\nIf not\
    \ specified, the program will find the highest available\nkmer size in the genome\
    \ database"
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_sampling
  doc: "Sampling to use in genome database.  If not specified, the program\nwill find\
    \ the smallest available sampling value in the genome database\nwithin selected\
    \ k-mer size"
  type: long?
  inputBinding:
    prefix: --sampling
- id: in_destdir
  doc: "Directory where to write SNP index files (default is\nGMAP genome directory\
    \ specified at compile time)"
  type: Directory?
  inputBinding:
    prefix: --destdir
- id: in_snps_db
  doc: Name of SNP database
  type: string?
  inputBinding:
    prefix: --snpsdb
- id: in_max_warnings
  doc: "Maximum number of warnings to print to stderr about\ninconsistencies relative\
    \ to the reference genome.\nA value of 0 turns off all warnings.  A negative value\n\
    prints all warnings.  (default -1, meaning no limit)"
  type: long?
  inputBinding:
    prefix: --max-warnings
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_i_it_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- snpindex
