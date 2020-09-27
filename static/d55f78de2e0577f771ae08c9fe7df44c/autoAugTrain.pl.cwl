class: CommandLineTool
id: autoAugTrain.pl.cwl
inputs:
- id: in_genome
  doc: "FASTA file with DNA sequences for training\ngenome.fa should include the corresponding\
    \ sequences in this case"
  type: File
  inputBinding:
    prefix: --genome
- id: in_species
  doc: species name as used by AUGUSTUS
  type: string
  inputBinding:
    prefix: --species
- id: in_est_ali
  doc: EST alignments are used to guess the UTR and its end point.
  type: string
  inputBinding:
    prefix: --estali
- id: in_utr
  doc: Switch it on to train AUGUSTUS with untranslated regions. Off by default
  type: boolean
  inputBinding:
    prefix: --utr
- id: in_flanking_dna
  doc: flanking_DNA length, default:4000
  type: long
  inputBinding:
    prefix: --flanking_DNA
- id: in_working_dir
  doc: "=/path/to/wd/      In the working directory results and temporary files are\
    \ stored.\nDefault: current working directory\nBy case with \"utr\", the directory\
    \ \"autoTrainRandomNumber\" which made by autoAugTrain.pl\nwithout \"utr\" is\
    \ expected."
  type: boolean
  inputBinding:
    prefix: --workingdir
- id: in_verbose
  doc: 'increase the verbosity level of the program by 1 each, default: 1, max level:
    3, e.g. say -v -v -v'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_use_existing
  doc: use and change the present config and parameter files if they exist for 'species'
  type: boolean
  inputBinding:
    prefix: --useexisting
- id: in_opt_rounds
  doc: optimization rounds - each meta parameter is optimized this often (default
    1)
  type: long
  inputBinding:
    prefix: --optrounds
- id: in_crf
  doc: try training as Conditional Random Field. Off by default
  type: boolean
  inputBinding:
    prefix: --CRF
- id: in_aug
  doc: Previous CDS predictions for constructing a training set of UTRs.
  type: string
  inputBinding:
    prefix: --aug
- id: in_training_set
  doc: ''
  type: string
  inputBinding:
    prefix: --trainingset
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- autoAugTrain.pl
