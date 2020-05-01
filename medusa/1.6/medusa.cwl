#!/usr/bin/env cwl-runner

baseCommand:
- medusa
class: CommandLineTool
cwlVersion: v1.0
id: medusa
inputs:
- doc: ''
  id: java
  inputBinding:
    position: 0
  type: string
- doc: 'OPTIONAL PARAMETER;The option *-d* allows for the estimation of the distance
    between pairs of contigs based on the reference genome(s): in this case the scaffolded
    contigs will be separated by a number of N characters equal to this estimate.
    The estimated distances are also saved in the <targetGenome>_distanceTable file.
    By default the scaffolded contigs are separated by 100 Ns'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: <<draftsFolder>>                   OPTIONAL PARAMETER; The option *-f* is optional
    and indicates the path to the comparison drafts folder
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: OPTIONAL PARAMETER;Conting network and path cover are given in gexf format.
  id: gex_f
  inputBinding:
    prefix: -gexf
  type: boolean
- doc: <<targetGenome>>                   REQUIRED PARAMETER;The option *-i* indicates
    the name of the target genome file.
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '<<fastaFile>>                    OPTIONAL PARAMETER; The option *-n50* allows
    the calculation of the N50 statistic on a FASTA file. In this case the usage is
    the following: java -jar medusa.jar -n50 <name_of_the_fasta>. All the other options
    will be ignored.'
  id: n50
  inputBinding:
    prefix: -n50
  type: boolean
- doc: <<outputName>>                     OPTIONAL PARAMETER; The option *-o* indicates
    the name of output fasta file.
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: <<numberOfRounds>>            OPTIONAL PARAMETER;The option *-random* is available
    (not required). This option allows the user to run a given number of cleaning
    rounds and keep the best solution. Since the variability is small 5 rounds are
    usually sufficient to find the best score.
  id: random
  inputBinding:
    prefix: -random
  type: boolean
- doc: '<<medusaScriptsFolder>>   OPTIONAL PARAMETER; The folder containing the medusa
    scripts. Default value: medusa_scripts'
  id: script_path
  inputBinding:
    prefix: -scriptPath
  type: boolean
- doc: RECOMMENDED PARAMETER; The option *-v* (recommended) print on console the information
    given by the package MUMmer. This option is strongly suggested to understand if
    MUMmer is not running properly.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: OPTIONAL PARAMETER;The option *-w2* is optional and allows for a sequence similarity
    based weighting scheme. Using a different weighting scheme may lead to better
    results.
  id: w2
  inputBinding:
    prefix: -w2
  type: boolean
