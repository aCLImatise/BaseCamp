class: CommandLineTool
id: pepgenome.cwl
inputs:
- id: in_chr
  doc: 'Export chr prefix Allowed 0, 1  (default: 0)'
  type: long
  inputBinding:
    prefix: -chr
- id: in_fast_a
  doc: "Filepath for file containing protein sequences in\nFASTA format"
  type: File
  inputBinding:
    prefix: -fasta
- id: in_format
  doc: "Select the output formats from gtf, gct, bed,\nptmbed, all or combinations\
    \ thereof separated by\n',' (default all)"
  type: string
  inputBinding:
    prefix: -format
- id: in_genome
  doc: "Filepath for file containing genome sequence in\nFASTA format used to extract\
    \ chromosome names and\norder and differenciate between assembly and\nscaffolds.\
    \ If not set chromosome and scaffold names\nand order is extracted from GTF input."
  type: File
  inputBinding:
    prefix: -genome
- id: in_gtf
  doc: "Filepath for file containing genome annotation in\nGTF format"
  type: File
  inputBinding:
    prefix: -gtf
- id: in_in
  doc: "Comma(,) separated file paths for files containing\npeptide identifications\
    \ (Contents of the file can\ntab separated format. i.e., File format: four\ncolumns:\
    \ SampleName\nPeptideSequence\nPSMs\nQuant; or mzTab, and mzIdentML)"
  type: File
  inputBinding:
    prefix: -in
- id: in_inf
  doc: "Format of the input file (mztab, mzid, or tsv).\n(default tsv)"
  type: File
  inputBinding:
    prefix: -inf
- id: in_inm
  doc: "Compute the kmer algorithm in memory or using\ndatabase algorithm (default\
    \ 0, database 1)"
  type: long
  inputBinding:
    prefix: -inm
- id: in_merge
  doc: "Set 'true' to merge mappings from all files from\ninput (default 'false')"
  type: string
  inputBinding:
    prefix: -merge
- id: in_mm
  doc: 'Allowed mismatches (0, 1 or 2; default: 0)'
  type: long
  inputBinding:
    prefix: -mm
- id: in_mm_mode
  doc: "Mismatch mode (true or false): if true mismatching\nwith two mismatches will\
    \ only allow 1 mismatch\nevery kmersize (default: 5) positions. (default:\nfalse)"
  type: long
  inputBinding:
    prefix: -mmmode
- id: in_source
  doc: "Please give a source name which will be used in the\nsecond column in the\
    \ output gtf file (default:\nPoGo)"
  type: File
  inputBinding:
    prefix: -source
- id: in_spark_master
  doc: "Spark master String. i.e., to run locally use:\nlocal[*]\n"
  type: string
  inputBinding:
    prefix: -spark_master
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_source
  doc: "Please give a source name which will be used in the\nsecond column in the\
    \ output gtf file (default:\nPoGo)"
  type: File
  outputBinding:
    glob: $(inputs.in_source)
cwlVersion: v1.1
baseCommand:
- pepgenome
