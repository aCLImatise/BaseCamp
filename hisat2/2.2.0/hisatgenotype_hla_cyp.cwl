class: CommandLineTool
id: hisatgenotype_hla_cyp.py.cwl
inputs:
- id: exclude_allele_list
  doc: A comma-separated list of alleles to be excluded. Enter a number N to randomly
    select N alleles for exclusion and N non-excluded alleles for testing (2N tested
    in total).
  type: string
  inputBinding:
    prefix: --exclude-allele-list
- id: num_mismatch
  doc: 'Maximum number of mismatches per read alignment to be considered (default:
    0)'
  type: string
  inputBinding:
    prefix: --num-mismatch
- id: verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: e.g., test_id:10,read_id:10000,basic_test
  type: string
  inputBinding:
    prefix: --debug
- id: novel_allele_detection
  doc: Change test to detection of new alleles. Report sensitivity and specificity
    rate at the end.
  type: boolean
  inputBinding:
    prefix: --novel_allele_detection
outputs: []
cwlVersion: v1.1
baseCommand:
- hisatgenotype_hla_cyp.py
