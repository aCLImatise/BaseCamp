class: CommandLineTool
id: genoStats.cwl
inputs:
- id: in_freq_sum
  doc: "a freqsum file to read as input. Use - to read from\nstdin (the default) (default:\
    \ \"-\")"
  type: File?
  inputBinding:
    prefix: --freqsum
- id: in_eigen_strat_geno
  doc: Eigenstrat Geno File
  type: File?
  inputBinding:
    prefix: --eigenstratGeno
- id: in_eigen_strat_snp
  doc: Eigenstrat Snp File
  type: File?
  inputBinding:
    prefix: --eigenstratSnp
- id: in_eigen_strat_ind
  doc: "Eigenstrat Ind File\n"
  type: File?
  inputBinding:
    prefix: --eigenstratInd
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- genoStats
