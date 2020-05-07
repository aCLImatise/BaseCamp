class: CommandLineTool
id: SalmID.py.cwl
inputs:
- id: input_file
  doc: Single fastq.gz file input, include path to file if file is not in same directory
  type: string
  inputBinding:
    prefix: --input_file
- id: extension
  doc: File extension, if specified without "--input_dir", SalmID will attempt to
    ID all files with this extension in current directory, otherwise files in input
    directory
  type: File
  inputBinding:
    prefix: --extension
- id: input_dir
  doc: Directory which contains data for identification, when not specified files
    in current directory will be analyzed.
  type: Directory
  inputBinding:
    prefix: --input_dir
- id: r
  doc: ', coverage or taxonomy, --report percentage, coverage or taxonomy Report either
    percentage ("percentage") of clade specific kmers recovered, average kmer-coverage
    ("cov"), or taxonomy (taxonomic species ID, plus observed mean k-mer coverages
    and expected coverage).'
  type: string
  inputBinding:
    prefix: -r
- id: m
  doc: or thorough, --mode quick or thorough Quick [quick] or thorough [thorough]
    mode
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- SalmID.py
