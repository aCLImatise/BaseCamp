class: CommandLineTool
id: cath_assign_domains.cwl
inputs:
- id: v
  doc: '[ --version ]                                                  Output version
    information'
  type: boolean
  inputBinding:
    prefix: -v
- id: svm_light_rbf_file
  doc: File containing SVM-light RBF model for CATH assignment
  type: string
  inputBinding:
    prefix: --svmlight-rbf-file
- id: file_list_file
  doc: 'File of data files (one line per query domain containing: ssap_results_file
    prc_results_file)'
  type: string
  inputBinding:
    prefix: --filelist-file
- id: sf_of_domain_file
  doc: 'File containing up-to-date assignments (one line per domain containing: domain_id
    superfamily_id)'
  type: string
  inputBinding:
    prefix: --sf-of-domain-file
- id: forbidden_node
  doc: '(=2.105, 2.110, 2.115, 2.120, 2.130, 2.140)  List of nodes to which automatic
    assignment is forbidden; specify option multiple times for multiple nodes RECOMMENDED:
    do not specify this option so that the default list of propeller architectures
    is used.'
  type: string
  inputBinding:
    prefix: --forbidden-node
outputs: []
cwlVersion: v1.1
baseCommand:
- cath-assign-domains
