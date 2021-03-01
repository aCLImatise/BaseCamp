class: CommandLineTool
id: design_naively.py.cwl
inputs:
- id: in_probe_length
  doc: (Optional) The number of bp in each probe
  type: long?
  inputBinding:
    prefix: --probe-length
- id: in_probe_stride
  doc: "(Optional) Generate candidate probes from the input\nthat are separated by\
    \ this number of bp"
  type: long?
  inputBinding:
    prefix: --probe-stride
- id: in_nrf
  doc: "NAIVE_REDUNDANT_FILTER, --naive-redundant-filter NAIVE_REDUNDANT_FILTER NAIVE_REDUNDANT_FILTER\n\
    Args: <MISMATCHES> <LCF_THRES>. Use the 'naive\nredundant filter' -- i.e., iterate\
    \ through a list of\nprobes and, for each probe p, remove the following\nprobes\
    \ that are redundant to p. Deem one probe\nredundant to another if the longest\
    \ common substring\nbetween them, up to MISMATCHES mismatches, is >=\nLCF_THRES."
  type: string?
  inputBinding:
    prefix: -nrf
- id: in_dsf
  doc: "DOMINATING_SET_FILTER, --dominating-set-filter DOMINATING_SET_FILTER DOMINATING_SET_FILTER\n\
    Args: <MISMATCHES> <LCF_THRES>. Use the 'dominating\nset filter' -- i.e., filter\
    \ redundant probes by\nconstructing a graph connecting redundant probes and\n\
    approximating the smallest dominating set. Deem one\nprobe redundant to another\
    \ if the longest common\nsubstring between them, up to MISMATCHES mismatches,\n\
    is >= LCF_THRES."
  type: string?
  inputBinding:
    prefix: -dsf
- id: in_add_reverse_complements
  doc: Add to the output the reverse complement of each probe
  type: boolean?
  inputBinding:
    prefix: --add-reverse-complements
- id: in_limit_target_genomes
  doc: "(Optional) Use only the first N target genomes in the\ndataset"
  type: string?
  inputBinding:
    prefix: --limit-target-genomes
- id: in_limit_target_genomes_randomly_with_replacement
  doc: "(Optional) Randomly select N target genomes in the\ndataset with replacement"
  type: string?
  inputBinding:
    prefix: --limit-target-genomes-randomly-with-replacement
- id: in_print_analysis
  doc: Print analysis of the probe set's coverage
  type: boolean?
  inputBinding:
    prefix: --print-analysis
- id: in_debug
  doc: Debug output
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_verbose
  doc: Verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/catch:1.4.0--py_0
cwlVersion: v1.1
baseCommand:
- design_naively.py
