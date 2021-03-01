class: CommandLineTool
id: make_training_sets.py.cwl
inputs:
- id: in_in_dir
  doc: "Path to input directory with GenBank file(s) for\ntraining. This path will\
    \ be added to file names in\ngroups file."
  type: File?
  inputBinding:
    prefix: --indir
- id: in_groups
  doc: "Path to file two tab-delimited columns: file name and\ngroup name. If not\
    \ provided each file will have its\nown training set."
  type: File?
  inputBinding:
    prefix: --groups
- id: in_use_taxonomy
  doc: "If set, taxonomy from input files will be used to\nupdate or create new groups.\
    \ This is performed after\nreading groups file."
  type: boolean?
  inputBinding:
    prefix: --use_taxonomy
- id: in_km_er_size
  doc: "The size of required kmers. For codon approach use\nmultiplicity of 3. [Default:\
    \ 12]"
  type: long?
  inputBinding:
    prefix: --kmer_size
- id: in_km_ers_type
  doc: "Approach for creating kmers. Options are: simple (just\nslicing the sequence\
    \ from the first position), all\n(all possible kmers), codon (all possible kmers\
    \ made\nwith step of 3 nts to get kmers corresponding\ntranslated aas). [Default:\
    \ all]"
  type: long?
  inputBinding:
    prefix: --kmers_type
- id: in_ph_mms
  doc: "Phage HMM profile database (like pVOGs) will be mapped\nagainst the genome\
    \ of interest and used as additional\nfeature to identify prophages."
  type: string?
  inputBinding:
    prefix: --phmms
- id: in_threads
  doc: Number of threads to use while searching with phmms.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_retrain
  doc: "Set if any of reference files previously used for\ntraining has changed, e.g.\
    \ prophage protein features\nindication was modified."
  type: boolean?
  inputBinding:
    prefix: --retrain
- id: in_absolute_retrain
  doc: "If set, ignores trainingGenome_list file and PhiSpy's\ndefault reference genomes.\
    \ This option allows to train\nPhiSpy with files provided just by the user."
  type: boolean?
  inputBinding:
    prefix: --absolute_retrain
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phispy:4.2.6--py38hed8969a_0
cwlVersion: v1.1
baseCommand:
- make_training_sets.py
