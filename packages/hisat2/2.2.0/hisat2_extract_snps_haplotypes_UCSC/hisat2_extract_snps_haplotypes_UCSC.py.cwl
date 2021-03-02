class: CommandLineTool
id: ../../../hisat2_extract_snps_haplotypes_UCSC.py.cwl
inputs:
- id: in_inter_gap
  doc: "Maximum distance for variants to be in the same\nhaplotype"
  type: string
  inputBinding:
    prefix: --inter-gap
- id: in_intra_gap
  doc: Break a haplotype into several haplotypes
  type: string
  inputBinding:
    prefix: --intra-gap
- id: in_verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_test_set
  doc: print test reads
  type: boolean
  inputBinding:
    prefix: --testset
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hisat2_extract_snps_haplotypes_UCSC.py
