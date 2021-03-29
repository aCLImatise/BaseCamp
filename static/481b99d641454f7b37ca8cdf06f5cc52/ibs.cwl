class: CommandLineTool
id: ibs.cwl
inputs:
- id: in_glf
  doc: 'input GLF filename:'
  type: boolean?
  inputBinding:
    prefix: -glf
- id: in_out_filename
  doc: 'filename(prefix):'
  type: File?
  inputBinding:
    prefix: -outFileName
- id: in_n_ind
  doc: 'nubmer of individuals in GLF file:'
  type: boolean?
  inputBinding:
    prefix: -nInd
- id: in_in_done
  doc: '/i1        individuals 1:'
  type: boolean?
  inputBinding:
    prefix: -ind1
- id: in_ind_two
  doc: '/i2        individuals 2:'
  type: boolean?
  inputBinding:
    prefix: -ind2
- id: in_all_pairs
  doc: 'analyse all pairs:'
  type: boolean?
  inputBinding:
    prefix: -allpairs
- id: in_max_sites
  doc: 'maximum sites to analyze:'
  type: boolean?
  inputBinding:
    prefix: -maxSites
- id: in_model
  doc: "ibs model\nsingle:        0 all 10 genotypes, 1 HO/HE\npair:          0 all\
    \ 10 genotypes, 1 HO/HE, 2 ABCD"
  type: boolean?
  inputBinding:
    prefix: -model
- id: in_seed
  doc: ibs -seed 0 use seed for random start
  type: boolean?
  inputBinding:
    prefix: -seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/angsd:0.935--hd2e4403_0
cwlVersion: v1.1
baseCommand:
- ibs
