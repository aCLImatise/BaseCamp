class: CommandLineTool
id: medusa.cwl
inputs:
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: d
  doc: 'OPTIONAL PARAMETER;The option *-d* allows for the estimation of the distance
    between pairs of contigs based on the reference genome(s): in this case the scaffolded
    contigs will be separated by a number of N characters equal to this estimate.
    The estimated distances are also saved in the <targetGenome>_distanceTable file.
    By default the scaffolded contigs are separated by 100 Ns'
  type: boolean
  inputBinding:
    prefix: -d
- id: f
  doc: <<draftsFolder>>                   OPTIONAL PARAMETER; The option *-f* is optional
    and indicates the path to the comparison drafts folder
  type: boolean
  inputBinding:
    prefix: -f
- id: gex_f
  doc: OPTIONAL PARAMETER;Conting network and path cover are given in gexf format.
  type: boolean
  inputBinding:
    prefix: -gexf
- id: i
  doc: <<targetGenome>>                   REQUIRED PARAMETER;The option *-i* indicates
    the name of the target genome file.
  type: boolean
  inputBinding:
    prefix: -i
- id: n50
  doc: '<<fastaFile>>                    OPTIONAL PARAMETER; The option *-n50* allows
    the calculation of the N50 statistic on a FASTA file. In this case the usage is
    the following: java -jar medusa.jar -n50 <name_of_the_fasta>. All the other options
    will be ignored.'
  type: boolean
  inputBinding:
    prefix: -n50
- id: o
  doc: <<outputName>>                     OPTIONAL PARAMETER; The option *-o* indicates
    the name of output fasta file.
  type: boolean
  inputBinding:
    prefix: -o
- id: random
  doc: <<numberOfRounds>>            OPTIONAL PARAMETER;The option *-random* is available
    (not required). This option allows the user to run a given number of cleaning
    rounds and keep the best solution. Since the variability is small 5 rounds are
    usually sufficient to find the best score.
  type: boolean
  inputBinding:
    prefix: -random
- id: script_path
  doc: '<<medusaScriptsFolder>>   OPTIONAL PARAMETER; The folder containing the medusa
    scripts. Default value: medusa_scripts'
  type: boolean
  inputBinding:
    prefix: -scriptPath
- id: v
  doc: RECOMMENDED PARAMETER; The option *-v* (recommended) print on console the information
    given by the package MUMmer. This option is strongly suggested to understand if
    MUMmer is not running properly.
  type: boolean
  inputBinding:
    prefix: -v
- id: w2
  doc: OPTIONAL PARAMETER;The option *-w2* is optional and allows for a sequence similarity
    based weighting scheme. Using a different weighting scheme may lead to better
    results.
  type: boolean
  inputBinding:
    prefix: -w2
outputs: []
cwlVersion: v1.1
baseCommand:
- medusa
