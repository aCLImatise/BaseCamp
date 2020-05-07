class: CommandLineTool
id: make_batch_for_iteratively_mapping_assembling.py.cwl
inputs:
- id: s
  doc: Input fasta format file as initial seed
  type: string
  inputBinding:
    prefix: -s
- id: r
  doc: How many iterations would you like to have? Default=3
  type: string
  inputBinding:
    prefix: -R
- id: t
  doc: theads used for bowtie2 and SPAdes. Default=1
  type: string
  inputBinding:
    prefix: -t
- id: k
  doc: SPAdes k-mer settings. Use the same format as in SPAdes. Default=21,45,65,85,105
  type: string
  inputBinding:
    prefix: -k
- id: o
  doc: Executable output batch file.
  type: string
  inputBinding:
    prefix: -o
- id: un
  doc: Try to map and assembly without paired information.
  type: boolean
  inputBinding:
    prefix: --un
- id: random_seed
  doc: 'seed for random generator for bowtie2. Default: 12345'
  type: string
  inputBinding:
    prefix: --random-seed
- id: which_bowtie2
  doc: 'Assign the path to Bowtie2 binary files if not added to the path. Default:
    try GetOrganelleDep/linux/bowtie2 first, then $PATH'
  type: string
  inputBinding:
    prefix: --which-bowtie2
- id: which_spades
  doc: 'Assign the path to SPAdes binary files if not added to the path. Default:
    try GetOrganelleDep/linux/SPAdes first, then $PATH'
  type: string
  inputBinding:
    prefix: --which-spades
outputs: []
cwlVersion: v1.1
baseCommand:
- make_batch_for_iteratively_mapping_assembling.py
