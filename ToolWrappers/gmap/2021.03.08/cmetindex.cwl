class: CommandLineTool
id: cmetindex.cwl
inputs:
- id: in_source_dir
  doc: "Directory where to read cmet index files (default is\nGMAP genome directory\
    \ specified at compile time)"
  type: Directory?
  inputBinding:
    prefix: --sourcedir
- id: in_destdir
  doc: "Directory where to write cmet index files (default is\nvalue of -F, if provided;\
    \ otherwise the value of the\nGMAP genome directory specified at compile time)"
  type: Directory?
  inputBinding:
    prefix: --destdir
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
    \ basesize and k-mer size"
  type: long?
  inputBinding:
    prefix: --sampling
- id: in_use_snps
  doc: "Use database containing known SNPs (in <STRING>.iit, built\npreviously using\
    \ snpindex) for tolerance to SNPs"
  type: string?
  inputBinding:
    prefix: --use-snps
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gmap:2021.03.08--pl5262h36cd882_0
cwlVersion: v1.1
baseCommand:
- cmetindex
