class: CommandLineTool
id: bs_seeker2_build.py.cwl
inputs:
- id: in_file
  doc: Input your reference genome file (fasta)
  type: File?
  inputBinding:
    prefix: --file
- id: in_aligner
  doc: "Aligner program to perform the analysis: bowtie,\nbowtie2, soap, rmap [Default:\
    \ bowtie]"
  type: long?
  inputBinding:
    prefix: --aligner
- id: in_path
  doc: "Path to the aligner program. Detected:\nbowtie: None\nbowtie2: /usr/local/bin\n\
    rmap: None\nsoap: None"
  type: File?
  inputBinding:
    prefix: --path
- id: in_db
  doc: "Path to the reference genome library (generated in\npreprocessing genome)\
    \ [Default:\n/usr/local/bin/bs_utils/reference_genomes]"
  type: File?
  inputBinding:
    prefix: --db
- id: in_rrbs
  doc: "Build index specially for Reduced Representation\nBisulfite Sequencing experiments.\
    \ Genome other than\ncertain fragments will be masked. [Default: False]"
  type: boolean?
  inputBinding:
    prefix: --rrbs
- id: in_low
  doc: "lower bound of fragment length (excluding recognition\nsequence such as C-CGG)\
    \ [Default: 20]"
  type: long?
  inputBinding:
    prefix: --low
- id: in_up
  doc: "upper bound of fragment length (excluding recognition\nsequence such as C-CGG\
    \ ends) [Default: 500]"
  type: long?
  inputBinding:
    prefix: --up
- id: in_cut_site
  doc: "Cut sites of restriction enzyme. Ex: MspI(C-CGG),\nMael:(C-TAG), double-enzyme\
    \ MspI&Mael:(C-CGG,C-TAG).\n[Default: C-CGG]\n"
  type: string?
  inputBinding:
    prefix: --cut-site
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bs_seeker2-build.py
