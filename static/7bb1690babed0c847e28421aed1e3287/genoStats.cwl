class: CommandLineTool
id: genoStats.cwl
inputs:
- id: freq_sum
  doc: a freqsum file to read as input. Use - to read from stdin
  type: string
  inputBinding:
    prefix: --freqsum
- id: eigen_strat_geno
  doc: Eigenstrat Geno File
  type: string
  inputBinding:
    prefix: --eigenstratGeno
- id: eigen_strat_snp
  doc: Eigenstrat Snp File
  type: string
  inputBinding:
    prefix: --eigenstratSnp
- id: eigen_strat_ind
  doc: Eigenstrat Ind File
  type: string
  inputBinding:
    prefix: --eigenstratInd
outputs: []
cwlVersion: v1.1
baseCommand:
- genoStats
