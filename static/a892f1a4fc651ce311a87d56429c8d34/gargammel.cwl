class: CommandLineTool
id: ../../../gargammel.cwl
inputs:
- id: comp
  doc: '[B,C,E]                          Composition of the final set in fraction  the
    3 numbers represent the bacterial, contaminant and endogenous ex: --comp 0.6,0.02,0.38
    will result in 60% bacterial contamination while the rest will be from the same
    species 5% will be contamination and 95% will be endogenous Default: --comp 0,0,1'
  type: boolean
  inputBinding:
    prefix: --comp
- id: mock
  doc: Do nothing, just print the commands that will be run
  type: boolean
  inputBinding:
    prefix: --mock
- id: output_prefix_simadna
  doc: 'Output prefix (default: [input dir]/simadna)'
  type: boolean
  inputBinding:
    prefix: -o
- id: _fragments_default
  doc: '[number]                Generate [number] fragments (default: 1000)'
  type: boolean
  inputBinding:
    prefix: -n
- id: _endogenous_coverage
  doc: '[coverage]              Endogenous coverage'
  type: boolean
  inputBinding:
    prefix: -c
- id: mi_since
  doc: '[file]          Base misincorporation for the endogenous fragments (default
    none)'
  type: boolean
  inputBinding:
    prefix: --misince
- id: mis_in_cc
  doc: '[file]          Base misincorporation for the contaminant fragments (default
    none)'
  type: boolean
  inputBinding:
    prefix: --misincc
- id: mis_in_cb
  doc: '[file]          Base misincorporation for the bacterial fragments (default
    none)'
  type: boolean
  inputBinding:
    prefix: --misincb
- id: dist_mis
  doc: '[dist]          Distance to consider for base misincorporation (default 1)
    this file is obtained from mapDamage'
  type: boolean
  inputBinding:
    prefix: --distmis
- id: loc
  doc: '[file]          Location for lognormal distribution (default none)'
  type: boolean
  inputBinding:
    prefix: --loc
- id: scale
  doc: '[file]          Scale for lognormal distribution    (default none)'
  type: boolean
  inputBinding:
    prefix: --scale
- id: minsize
  doc: '[length]        Minimum fragments length (default: 0)'
  type: boolean
  inputBinding:
    prefix: --minsize
- id: maxsize
  doc: '[length]        Maximum fragments length (default: 1000)'
  type: boolean
  inputBinding:
    prefix: --maxsize
- id: map_damage
  doc: "[mis.txt] [protocol]    Read the miscorporation file [mis.txt] produced by\
    \ mapDamage [protocol] can be either \"single\" or \"double\" (without quotes)\
    \ Single strand will have C->T damage on both ends Double strand will have and\
    \ C->T at the 5' end and G->A damage at the 3' end"
  type: boolean
  inputBinding:
    prefix: -mapdamage
- id: mat_file
  doc: '[matrix file prefix]    Read the matrix file of substitutions Provide the
    prefix only, both files must end with 5.dat and 3.dat'
  type: boolean
  inputBinding:
    prefix: -matfile
- id: damage
  doc: '[v,l,d,s]               For the Briggs et al. 2007 model The parameters must
    be comma-separated e.g.: -damage 0.03,0.4,0.01,0.3 v: nick frequency l: length
    of overhanging ends (geometric parameter) d: prob. of deamination of Cs in double-stranded
    parts s: prob. of deamination of Cs in single-stranded parts'
  type: boolean
  inputBinding:
    prefix: -damage
- id: map_damage_e
  doc: '[mis.txt] [protocol]    Endogenous mapDamage misincorporation file'
  type: boolean
  inputBinding:
    prefix: -mapdamagee
- id: mat_file_e
  doc: '[matrix file prefix]    Endogenous matrix file of substitutions'
  type: boolean
  inputBinding:
    prefix: -matfilee
- id: damage_e
  doc: '[v,l,d,s]               Endogenous Briggs parameters'
  type: boolean
  inputBinding:
    prefix: -damagee
- id: map_damage_b
  doc: '[mis.txt] [protocol]    Bacterial mapDamage misincorporation file'
  type: boolean
  inputBinding:
    prefix: -mapdamageb
- id: mat_file_b
  doc: '[matrix file prefix]    Bacterial matrix file of substitutions'
  type: boolean
  inputBinding:
    prefix: -matfileb
- id: damage_b
  doc: '[v,l,d,s]               Bacterial Briggs parameters'
  type: boolean
  inputBinding:
    prefix: -damageb
- id: map_damage_c
  doc: '[mis.txt] [protocol]    Human contaminant mapDamage misincorporation file'
  type: boolean
  inputBinding:
    prefix: -mapdamagec
- id: mat_file_c
  doc: '[matrix file prefix]    Human contaminant matrix file of substitutions'
  type: boolean
  inputBinding:
    prefix: -matfilec
- id: damage_cd
  doc: '[v,l,d,s]               Human contaminant Briggs parameters'
  type: boolean
  inputBinding:
    prefix: -damagecd
- id: mat_file_non_meth
  doc: '[matrix file prefix]    Read the matrix file of substitutions for non-methylated
    Cs Provide the prefix only, both files must end with 5.dat and 3.dat'
  type: boolean
  inputBinding:
    prefix: -matfilenonmeth
- id: mat_file_meth
  doc: '[matrix file prefix]    Read the matrix file of substitutions for methylated
    Cs Provide the prefix only, both files must end with 5.dat and 3.data'
  type: boolean
  inputBinding:
    prefix: -matfilemeth
- id: fa
  doc: '[seq]                           Adapter that is observed after the forward
    read (Default: AGATCGGAAG...)'
  type: boolean
  inputBinding:
    prefix: -fa
- id: sa
  doc: '[seq]                           Adapter that is observed after the reverse
    read (Default: AGATCGGAAG...)'
  type: boolean
  inputBinding:
    prefix: -sa
- id: rl
  doc: '[length]                        Desired read length  (Default: 75)'
  type: boolean
  inputBinding:
    prefix: -rl
- id: se
  doc: 'use single-end sequencing (Default: paired-end) The following options change
    the sequencing error rate, please note that positive factor will decrease the
    rate of such errors and a negative one will increase it.'
  type: boolean
  inputBinding:
    prefix: -se
- id: qs
  doc: '[factor]                        Increase error rate for forward reads by a
    factor of 1/(10^([factor]/10)) (Default: 0)'
  type: boolean
  inputBinding:
    prefix: -qs
- id: qs_two
  doc: '[factor]                        Increase error rate for reverse reads by a
    factor of 1/(10^([factor]/10)) (Default: 0)'
  type: boolean
  inputBinding:
    prefix: -qs2
- id: ss
  doc: '[system]                        Illumina platfrom to use, the parentheses
    indicate the max. read length use the shorthand in the left column: (single-end,
    paired-end) GA2  - GenomeAnalyzer II (  50bp,  75bp) HS20 - HiSeq 2000        (
    100bp, 100bp) HS25 - HiSeq 2500        ( 125bp, 150bp) (Default) HSXt - HiSeqX
    TruSeq     ( 150bp, 150bp) MSv1 - MiSeq v1          ( 250bp, 250bp) MSv3 - MiSeq
    v3          ( 250bp, 250bp)'
  type: boolean
  inputBinding:
    prefix: -ss
outputs: []
cwlVersion: v1.1
baseCommand:
- gargammel
