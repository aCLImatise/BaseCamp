class: CommandLineTool
id: medusa.cwl
inputs:
- id: in_optional_parameterthe_option_dallows
  doc: "OPTIONAL PARAMETER;The option *-d*\nallows for the estimation of the\ndistance\
    \ between pairs of contigs\nbased on the reference genome(s):\nin this case the\
    \ scaffolded contigs\nwill be separated by a number of N\ncharacters equal to\
    \ this estimate.\nThe estimated distances are also\nsaved in the\n<targetGenome>_distanceTable\
    \ file.\nBy default the scaffolded contigs\nare separated by 100 Ns"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_draftsfolder_optional_parameter
  doc: "<<draftsFolder>>                   OPTIONAL PARAMETER; The option *-f*\nis\
    \ optional and indicates the path\nto the comparison drafts folder"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_gex_f
  doc: "OPTIONAL PARAMETER;Conting network\nand path cover are given in gexf\nformat."
  type: boolean
  inputBinding:
    prefix: -gexf
- id: in_targetgenome_required_parameterthe
  doc: "<<targetGenome>>                   REQUIRED PARAMETER;The option *-i*\nindicates\
    \ the name of the target\ngenome file."
  type: boolean
  inputBinding:
    prefix: -i
- id: in_n_five_zero
  doc: "<<fastaFile>>                    OPTIONAL PARAMETER; The option\n*-n50* allows\
    \ the calculation of\nthe N50 statistic on a FASTA file.\nIn this case the usage\
    \ is the\nfollowing: java -jar medusa.jar\n-n50 <name_of_the_fasta>. All the\n\
    other options will be ignored."
  type: boolean
  inputBinding:
    prefix: -n50
- id: in_outputname_optional_parameter
  doc: "<<outputName>>                     OPTIONAL PARAMETER; The option *-o*\nindicates\
    \ the name of output fasta\nfile."
  type: File
  inputBinding:
    prefix: -o
- id: in_random
  doc: "<<numberOfRounds>>            OPTIONAL PARAMETER;The option\n*-random* is\
    \ available (not\nrequired). This option allows the\nuser to run a given number\
    \ of\ncleaning rounds and keep the best\nsolution. Since the variability is\n\
    small 5 rounds are usually\nsufficient to find the best score."
  type: boolean
  inputBinding:
    prefix: -random
- id: in_script_path
  doc: "<<medusaScriptsFolder>>   OPTIONAL PARAMETER; The folder\ncontaining the medusa\
    \ scripts.\nDefault value: medusa_scripts"
  type: boolean
  inputBinding:
    prefix: -scriptPath
- id: in_recommended_parameter_optionv
  doc: "RECOMMENDED PARAMETER; The option\n*-v* (recommended) print on console\nthe\
    \ information given by the\npackage MUMmer. This option is\nstrongly suggested\
    \ to understand if\nMUMmer is not running properly."
  type: boolean
  inputBinding:
    prefix: -v
- id: in_w_two
  doc: "OPTIONAL PARAMETER;The option *-w2*\nis optional and allows for a\nsequence\
    \ similarity based weighting\nscheme. Using a different weighting\nscheme may\
    \ lead to better results.\n"
  type: boolean
  inputBinding:
    prefix: -w2
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outputname_optional_parameter
  doc: "<<outputName>>                     OPTIONAL PARAMETER; The option *-o*\nindicates\
    \ the name of output fasta\nfile."
  type: File
  outputBinding:
    glob: $(inputs.in_outputname_optional_parameter)
cwlVersion: v1.1
baseCommand:
- medusa
