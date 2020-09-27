class: CommandLineTool
id: SalmID.py.cwl
inputs:
- id: in_input_file
  doc: "Single fastq.gz file input, include path to file if\nfile is not in same directory"
  type: File
  inputBinding:
    prefix: --input_file
- id: in_extension
  doc: "File extension, if specified without \"--input_dir\",\nSalmID will attempt\
    \ to ID all files with this\nextension in current directory, otherwise files in\n\
    input directory"
  type: File
  inputBinding:
    prefix: --extension
- id: in_input_dir
  doc: "Directory which contains data for identification, when\nnot specified files\
    \ in current directory will be\nanalyzed."
  type: Directory
  inputBinding:
    prefix: --input_dir
- id: in_coverage_taxonomy_report
  doc: ", coverage or taxonomy, --report percentage, coverage or taxonomy\nReport\
    \ either percentage (\"percentage\") of clade\nspecific kmers recovered, average\
    \ kmer-coverage\n(\"cov\"), or taxonomy (taxonomic species ID, plus\nobserved\
    \ mean k-mer coverages and expected coverage)."
  type: string
  inputBinding:
    prefix: -r
- id: in_thorough__mode
  doc: "or thorough, --mode quick or thorough\nQuick [quick] or thorough [thorough]\
    \ mode\n"
  type: string
  inputBinding:
    prefix: -m
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SalmID.py
