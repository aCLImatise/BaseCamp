class: CommandLineTool
id: miRNAture.cwl
inputs:
- id: in_man
  doc: Prints an extended help page and exits.
  type: boolean?
  inputBinding:
    prefix: -man
- id: in_blast_queries_folder
  doc: "Path of blast query sequences in FASTA format to be searched\non the subject\
    \ sequence."
  type: File?
  inputBinding:
    prefix: -blastQueriesFolder
- id: in_datadir
  doc: "Path to pre-calculated data directory containing RFAM and\nmiRBase covariance,\
    \ hidden markov models, and necessary\nfiles to run MIRfix."
  type: File?
  inputBinding:
    prefix: -datadir
- id: in_mir_fix_path
  doc: Alternative path of the MIRfix.py program.
  type: File?
  inputBinding:
    prefix: -mirfix_path
- id: in_mode
  doc: "<Blast, HMM, Other_CM, Infernal, Final>\nHomology search modes: Blast, HMM,\
    \ Other_CM, Infernal and/or\nFinal. It is possible to perform individual analysis,\
    \ but it\nis always recommended to include the Final option."
  type: boolean?
  inputBinding:
    prefix: -mode
- id: in_parallel_slur_m
  doc: "Activate SLURM resource manager to submit parallel jobs (1)\nor not (0)."
  type: long?
  inputBinding:
    prefix: -parallel_slurm
- id: in_repetition_cut_off
  doc: "<relax,Number_Loci,Candidates_to_evaluate>\nSetup number of maximum loci number\
    \ that will be evaluated\nby the mature's annotation stage. By default, miRNAture\
    \ will\ndetect miRNA families that report high number of loci (> 200\nloci). Then,\
    \ it will select the top 100 candidates in terms\nof alignment scores, as candidates\
    \ for the validation stage\n(default,200,100). The designed values could be modified\
    \ by\nthe following flag:\n'relax,Number_Loci,Candidates_to_evaluate'. This option\n\
    allows to the user to select the threshold values to detect\nrepetitive families.\
    \ The first parameter is <relax>, which\ntells miRNAture to change the default\
    \ configuration. The\nnext one, <Number_Loci> is the threshold of loci number\
    \ to\nclassify a family as repetitive. The last one,\n<Candidates_to_evaluate>,\
    \ is the number of candidates prone\nto be evaluated in the next evaluation section.\
    \ The rest\ncandidates are included as homology 'potential' candidates."
  type: boolean?
  inputBinding:
    prefix: -repetition_cutoff
- id: in_strategy
  doc: "<1,2,3,4,5,6,7,8,9,10>\nThis flag is blast mode specific. It corresponds to\
    \ blast\nstrategies that would be used to search miRNAs. It must be\nindicated\
    \ along with -m Blast flag."
  type: boolean?
  inputBinding:
    prefix: -strategy
- id: in_specie_genome
  doc: Path of target sequences to be analyzed in FASTA format.
  type: File?
  inputBinding:
    prefix: -specie_genome
- id: in_specie_name
  doc: "Specie or sequence source's scientific name. The format must\nbe: Genera_specie,\
    \ separated by '_'."
  type: string?
  inputBinding:
    prefix: -specie_name
- id: in_specie_tag
  doc: "Experiment tag. Will help to identify the generated files\nalong miRNA output\
    \ files."
  type: string?
  inputBinding:
    prefix: -specie_tag
- id: in_subset_models
  doc: "Target list of CMs to be searched on subject\ngenome/sequences. If not indicated,\
    \ miRNAture will run all\nRFAM v14.4 metazoan miRNA models."
  type: File?
  inputBinding:
    prefix: -subset_models
- id: in_user_models
  doc: "Directory with additional hidden Markov (HMMs) or covariance\nmodels (CMs)\
    \ provided by the user. This must be contain a\ncorresponding HMMs/ and CMs/ folders,\
    \ which the user models\nwill be identified."
  type: File?
  inputBinding:
    prefix: -user_models
- id: in_workdir
  doc: "Working directory path to write all miRNAture results.\n"
  type: File?
  inputBinding:
    prefix: -workdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_workdir
  doc: "Working directory path to write all miRNAture results.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_workdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mirnature:1.0--pl5262r35hdfd78af_2
cwlVersion: v1.1
baseCommand:
- miRNAture
