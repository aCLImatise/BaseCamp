class: CommandLineTool
id: cath_assign_domains.cwl
inputs:
- id: in_output_version_information
  doc: '[ --version ]                                                  Output version
    information'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_svm_light_rbf_file
  doc: File containing SVM-light RBF model for CATH assignment
  type: File?
  inputBinding:
    prefix: --svmlight-rbf-file
- id: in_file_list_file
  doc: 'File of data files (one line per query domain containing: ssap_results_file
    prc_results_file)'
  type: File?
  inputBinding:
    prefix: --filelist-file
- id: in_sf_of_domain_file
  doc: 'File containing up-to-date assignments (one line per domain containing: domain_id
    superfamily_id)'
  type: File?
  inputBinding:
    prefix: --sf-of-domain-file
- id: in_forbidden_node
  doc: "(=2.105, 2.110, 2.115, 2.120, 2.130, 2.140)  List of nodes to which automatic\
    \ assignment is forbidden; specify option multiple times for multiple nodes\n\
    RECOMMENDED: do not specify this option so that the default list of propeller\
    \ architectures is used."
  type: double?
  inputBinding:
    prefix: --forbidden-node
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cath-assign-domains
