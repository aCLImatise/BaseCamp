class: CommandLineTool
id: ../../../genoStats.cwl
inputs:
- id: freq_sum
  doc: 'a freqsum file to read as input. Use - to read from stdin (the default) (default:
    "-")'
  type: File
  inputBinding:
    prefix: --freqsum
- id: eigen_strat_geno
  doc: Eigenstrat Geno File
  type: File
  inputBinding:
    prefix: --eigenstratGeno
- id: eigen_strat_snp
  doc: Eigenstrat Snp File
  type: File
  inputBinding:
    prefix: --eigenstratSnp
- id: eigen_strat_ind
  doc: Eigenstrat Ind File
  type: File
  inputBinding:
    prefix: --eigenstratInd
outputs: []
cwlVersion: v1.1
baseCommand:
- genoStats
